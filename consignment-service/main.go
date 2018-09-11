package main

import (
	_"log"
	_"net"
    "fmt"

	// Import the generated protobuf code
	micro "github.com/micro/go-micro"
	pb "github.com/shipper/consignment-service/proto/consignment"
	"golang.org/x/net/context"
	_ "google.golang.org/grpc"
	_ "google.golang.org/grpc/reflection"
)

const (
	port = ":50051"
)

type IRepository interface {
	Create(*pb.Consignment) (*pb.Consignment, error)
	GetAll() []*pb.Consignment
}

// Repository - Dummy repository, this simulates the use of a datastore of some kind. We'll replace this with a real implement later on.
type Repository struct {
	consignments []*pb.Consignment
}

func (repo *Repository) Create(consignment *pb.Consignment) (*pb.Consignment, error) {
	updated := append(repo.consignments, consignment)
	repo.consignments = updated

	return consignment, nil
}

func (repo *Repository) GetAll() []*pb.Consignment {
	return repo.consignments
}

// Service should implement all of the methods to satisfy the service. we defined in our protobuf definition. You can check the interface in the generated code itself for the exact method signatures etc. to give you a better idea.
type service struct {
	repo IRepository
}

// CreateConsignment - we created just one method on our service, which is a create method, which takes a context and a request as an argument, these are handled by the gRPC server.
func (s *service) CreateConsignment(ctx context.Context, req *pb.Consignment, res *pb.Response) error {
	// Save our consignment
	consignment, err := s.repo.Create(req)
	if err != nil {
		return err
	}

    res.created = true
    res.consignment = consignment

	return nil
}

func (s *service) GetConsignments(ctx context.Context, req *pb.GetRequest, res *pb.Response) error {

	consignments := s.repo.GetAll()
    res.consignments = consignments
	return nil
}

func main() {
	repo := &Repository{}

	srv := micro.NewService(
        micro.Name("go.micro.srv.consignment"),
        micro.Version("latest")
        )

	srv.Init()

    pb.RegisterShippingServiceHandler(srv.Server(), &service{repo})

    if err := srv.Run(); err != nil {
        fmt.Println(err)
    }
}
