// consignment-cli/cli.go
package main

import (
	"context"
	"encoding/json"
	"errors"
	microclient "github.com/micro/go-micro/client"
	"github.com/micro/go-micro/cmd"
	"github.com/micro/go-micro/metadata"
	pb "github.com/shipper/consignment-service/proto/consignment"
	"io/ioutil"
	"log"
	"os"
)

const (
	ADDRESS           = "localhost:50051"
	DEFAULT_INFO_FILE = "consignment.json"
)

func parseFile(file string) (*pb.Consignment, error) {

	data, err := ioutil.ReadFile(file)
	if err != nil {
		return nil, err
	}

	var consignment *pb.Consignment
	err = json.Unmarshal(data, &consignment)
	if err != nil {
		return nil, errors.New("consignment.json file content error")
	}

	return consignment, nil
}

func main() {
	cmd.Init()

	// Create new greeter clinet
	client := pb.NewShippingServiceClient("go.micro.srv.consignment", microclient.DefaultClient)

	// Contact the server and print out its response
	if len(os.Args) < 3 {
		log.Fatalln("Not enough arguments expecing file and token.")
	}
	infoFile := os.Args[1]
	token := os.Args[2]

	consignment, err := parseFile(infoFile)
	if err != nil {
		log.Fatalf("Could not parse file: %v", err)
	}

	tokenContext := metadata.NewContext(context.Background(), map[string]string{
		"token": token,
	})

	r, err := client.CreateConsignment(context.TODO(), consignment)
	if err != nil {
		log.Fatalf("Could not create: %v", err)
	}

	log.Printf("Created: %t", r.Created)

	getAll, err := client.GetConsignments(tokenContext, &pb.GetRequest{})
	if err != nil {
		log.Fatalf("Could not list consignment: %v", err)
	}

	for _, v := range getAll.Consignments {
		log.Println(v)
	}
}
