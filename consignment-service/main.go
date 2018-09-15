package main

import (
	"fmt"
	"log"
	"os"

	// Import the generated protobuf code
	"github.com/micro/go-micro"
	pb "github.com/shipper/consignment-service/proto/consignment"
	vesselProto "github.com/shipper/vessel-service/proto/vessel"
)

const (
	defaultHost = "localhost:27017"
)

func main() {

	// Database host from the environment variables
	host := os.Getenv("DB_HOST")
	if host == "" {
		host = defaultHost
	}

	session, err := CreateSession(host)

	// Mgo creates a 'master' session, we need to end that session before the main function closes
	defer session.Close()

	if err != nil {
		// We're wrapping the error returned from our CreateSession here to add some context oto the error.
		log.Panicf("Could not connect to datastore with host %s - %v", host, err)
	}

	srv := micro.NewService(
		micro.Name("go.micro.srv.consignment"),
		micro.Version("latest"),
	)

	vesselClient := vesselProto.NewVesselServiceClient("go.micro.srv.vessel", srv.Client())

	// Init will parse the command line flags
	srv.Init()

	// Register handler
	pb.RegisterShippingServiceHandler(srv.Server(), &service{session, vesselClient})

	// Run the server
	if err := srv.Run(); err != nil {
		fmt.Println(err)
	}
}
