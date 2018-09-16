package main

import (
	"log"
	"os"

	_ "github.com/micro/cli"
	_ "github.com/micro/go-micro"
	microclient "github.com/micro/go-micro/client"
	"github.com/micro/go-micro/cmd"
	pb "github.com/shipper/user-service/proto/user"
	"golang.org/x/net/context"
)

func main() {
	cmd.Init()

	// Create new greeter client
	client := pb.NewUserServiceClient("go.micro.srv.user", microclient.DefaultClient)

	name := "Ewan Valentine"
	email := "ewan.valentine89@gmail.com"
	password := "test123"
	company := "BBC"

	res, err := client.Create(context.TODO(), &pb.User{
		Name:     name,
		Email:    email,
		Password: password,
		Company:  company,
	})
	if err != nil {
		log.Fatalf("call Create error: %v", err)
	}
	log.Println("created: ", res.User.Id)

	allRes, err := client.GetAll(context.Background(), &pb.Request{})
	if err != nil {
		log.Fatalf("call GetAll error: %v", err)
	}
	for i, u := range allRes.Users {
		log.Printf("user_%d: %v\n", i, u)
	}

	authRes, err := client.Auth(context.TODO(), &pb.User{
		Email:    email,
		Password: password,
	})
	if err != nil {
		log.Fatalf("auth failed: %v", err)
	}
	log.Println("token: ", authRes.Token)

	os.Exit(0)
}
