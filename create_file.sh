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
