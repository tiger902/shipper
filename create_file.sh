#!/bin/bash

if [[ ! -f "docker-compose.yml" ]]; then
    echo "create docker-compose.yml"
    touch docker-compose.yml
fi

if [[ ! -d "consignment-cli" ]]; then
    mkdir consignment-cli
fi

echo "enter consignment-cli"
cd consignment-cli

if [[ ! -f "cli.go" ]]; then
    echo "create cli.go"    
    touch cli.go
fi

if [[ ! -f "consignment.json" ]]; then
    echo "create consignment.json"
    touch consignment.json
fi

if [[ ! -f "Dockerfile" ]]; then
    echo "create Dockerfile"
    touch Dockerfile
fi

if [[ ! -f "Makefile" ]]; then
    echo "create Makefile"
    touch Makefile
fi

echo "exit consignment-cli"
cd ..

echo "enter consignment-service"
if [[ ! -d "consignment-service" ]]; then
    echo "create dir consignment-service"
    mkdir consignment-service
fi
cd consignment-service

echo "enter proto"
if [[ ! -d "proto" ]]; then
    echo "create proto"
    mkdir proto
fi
cd proto

echo "enter consignment"
if [[ ! -d "consignment" ]]; then
    echo "create consignment"
    mkdir consignment
fi
cd consignment

if [[ ! -f "consignment.proto" ]]; then
    echo "create consignment.proto"
    touch consignment.proto
fi

echo "exit consignment"
cd ..

echo "exit proto"
cd ..

if [[ ! -f "datastore.go" ]]; then
    echo "create datastore.go"
    touch datastore.go
fi

if [[ ! -f "Dockerfile" ]]; then
    echo "create Dockerfile"
    touch Dockerfile
fi

if [[ ! -f "handler.go" ]]; then
    echo "create handler.go"
    touch handler.go
fi

if [[ ! -f "Makefile" ]]; then
    echo "create Makefile"
    touch Makefile
fi

if [[ ! -f "main.go" ]]; then
    echo "create main.go"
    touch main.go
fi

if [[ ! -f "repository.go" ]]; then
    echo "create repository.go"
    touch repository.go
fi

echo "exit consignment-service"
cd ..

echo "enter user-cli"
if [[ ! -d "user-cli" ]]; then
    echo "create user-cli"
    mkdir user-cli
fi
cd user-cli

if [[ ! -f "cli.go" ]]; then
    echo "create cli.go"
    touch cli.go
fi

if [[ ! -f "Dockerfile" ]]; then
    echo "create Dockerfile"
    touch Dockerfile
fi

if [[ ! -f "Makefile" ]]; then
    echo "create Makefile"
    touch Makefile
fi

echo "exit user-cli"
cd ..

echo "enter user-service"
if [[ ! -d "user-service" ]]; then
    echo "create user-service"
    touch user-service
fi
cd user-service

echo "enter proto"
if [[ ! -d "proto" ]]; then
    echo "create proto"
    mkdir proto
fi
cd proto

echo "enter user"
if [[ ! -d "user" ]]; then
    echo "create user"
    mkdir user
fi
cd user

if [[ ! -f "extension.go" ]]; then
    echo "create extension.go"
    touch extension.go
fi

if [[ ! -f "user.proto" ]]; then
    echo "create user.proto"
    touch user.proto
fi

echo "exit user"
cd ..
echo "exit proto"
cd ..

if [[ ! -f "database.go" ]]; then
    echo "database.go"
    touch database.go
fi

if [[ ! -f "Dockerfile" ]]; then
    echo "create Dockerfile"
    touch Dockerfile
fi

if [[ ! -f "handler.go" ]]; then
    echo "create handler.go"
    touch handler.go
fi

if [[ ! -f "main.go" ]]; then
    echo "create main.go"
    touch main.go
fi

if [[ ! -f "Makefile" ]]; then
    echo "create Makefile"
    touch Makefile
fi

if [[ ! -f "repository.go" ]]; then
    echo "create repository.go"
    touch repository.go
fi

if [[ ! -f "token_service.go" ]]; then
    echo "create token_service.go"
    touch token_service.go
fi

echo "exit user-service"
cd ..

echo "enter vessel-service"
if [[ ! -d "vessel-service" ]]; then
    echo "create vessel-service"
    mkdir vessel-service
fi
cd vessel-service

echo "enter proto"
if [[ ! -d "proto" ]]; then
    echo "create proto"
    mkdir proto
fi
cd proto

echo "enter vessel"
if [[ ! -d "vessel" ]]; then
    echo "create vessel"
    mkdir vessel
fi
cd vessel

if [[ ! -f "vessel.proto" ]]; then
    echo "create vessel.proto"
    touch vessel.proto
fi

echo "exit vessel"
cd ..
echo "exit proto"
cd ..

if [[ ! -f "datastore.go" ]]; then
    echo "create datastore.go"
    touch datastore.go
fi

if [[ ! -f "Dockerfile" ]]; then
    echo "create Dockerfile"
    touch Dockerfile
fi

if [[ ! -f "handler.go" ]]; then
    echo "create handler.go"
    touch handler.go
fi

if [[ ! -f "main.go" ]]; then
    echo "create main.go"
    touch main.go
fi

if [[ ! -f "Makefile" ]]; then
    echo "create Makefile"
    touch Makefile
fi

if [[ ! -f "repository.go" ]]; then
    echo "create repository.go"
    touch repository.go
fi

echo "exit vessel-service"
cd ..

echo "enter vendor+++++++++++++++++++++++++++++++++++++"
if [[ ! -d "vendor" ]]; then
    echo "create vendor"
    mkdir vendor
fi
cd vendor

echo "enter github.com++++++++++++++++++++++++++++"
if [[ ! -d "github.com" ]]; then
    echo "create github.com"
    mkdir github.com
fi
cd github.com

echo "enter micro+++++++++++++++++++++++++++"
if [[ ! -d "micro" ]]; then
    echo "create micro"
    mkdir micro
fi
cd micro

if [[ ! -d "protobuf" ]]; then
    mkdir protobuf
    echo "git clone https://github.com/micro/protobuf.git "
    git clone https://github.com/micro/protobuf.git protobuf
fi

if [[ ! -d "go-micro" ]]; then
    git clone https://github.com/micro/go-micro.git go-micro
fi

echo "exit micro----------------------------"
cd ..

echo "exit github.com------------------------------"
cd ..

echo "enter golang.org++++++++++++++++++++++++++++++"
if [[ ! -d "golang.org" ]]; then
    echo "create golang.org"
    mkdir golang.org
fi
cd golang.org

echo "enter x+++++++++++++++++++++++++++++++++++++"
if [[ ! -d "x" ]]; then
    echo "create x"
    mkdir x
fi
cd x

if [[ ! -d "net" ]]; then
    echo "create net"
    mkdir net
    git clone https://github.com/golang/net.git net
fi

echo "exit x--------------------------------------"
cd ..

echo "exit golang.org--------------------------------"
cd ..

echo "enter google.golang.org++++++++++++++++++++++++"
if [[ ! -d "google.golang.org" ]]; then
    echo "create google.golang.org"
    mkdir google.golang.org
fi
cd google.golang.org

if [[ ! -d "grpc" ]]; then
    echo "create grpc"
    mkdir grpc
    git clone https://github.com/grpc/grpc-go.git grpc
fi

echo "exit google.golang.org------------------------"
cd ..

echo "exit vendor-----------------------------------------"
cd ..

go get -u github.com/micro/protobuf/{proto,protoc-gen-go}

if [[ ! -d "$GOPATH/src/github.com/micro/go-micro" ]]; then
    git clone https://github.com/micro/go-micro.git $GOPATH/src/github.com/micro/go-micro
fi

if [[ ! -d "$GOPATH/src/golang.org/x/net" ]]; then
    git clone https://github.com/golang/net.git $GOPATH/src/golang.org/x/net
fi

if [[ ! -d "$GOPATH/src/google.golang.org/grpc" ]]; then
    git clone https://github.com/grpc/grpc-go.git $GOPATH/src/google.golang.org/grpc
fi

go get -u github.com/hashicorp/consul

