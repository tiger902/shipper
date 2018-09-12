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


echo "exit consignment"
cd ..

echo "exit proto"
cd ..

echo "exit consignment-service"
cd ..

echo "enter user-cli"
if [[ ! -d "user-cli" ]]; then
    echo "create user-cli"
    mkdir user-cli
fi
cd user-cli

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

echo "exit user"
cd ..
echo "exit proto"
cd ..


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

echo "exit vessel"
cd ..
echo "exit proto"
cd ..


echo "exit vessel-service"
cd ..


if [[ ! -d "$GOPATH/src/github.com/micro/protobuf" ]]; then
    go get -u github.com/micro/protobuf/{proto,protoc-gen-go}
fi


if [[ ! -d "$GOPATH/src/github.com/micro/go-micro" ]]; then
    git clone https://github.com/micro/go-micro.git $GOPATH/src/github.com/micro/go-micro
fi

if [[ ! -d "$GOPATH/src/golang.org/x/net" ]]; then
    git clone https://github.com/golang/net.git $GOPATH/src/golang.org/x/net
fi

if [[ ! -d "$GOPATH/src/google.golang.org/grpc" ]]; then
    git clone https://github.com/grpc/grpc-go.git $GOPATH/src/google.golang.org/grpc
fi

if [[ ! -d "$GOPATH/src/google.golang.org/genproto" ]]; then
    git clone https://github.com/google/go-genproto.git $GOPATH/src/google.golang.org/genproto
fi


if [[ ! -d "$GOPATH/src/github.com/micro/cli" ]]; then
    git clone https://github.com/micro/cli.git $GOPATH/src/github.com/micro/cli
fi

if [[ ! -d "$GOPATH/src/github.com/micro/go-rcache" ]]; then
    git clone https://github.com/micro/go-rcache.git $GOPATH/src/github.com/micro/go-rcache
fi


if [[ ! -d "$GOPATH/src/github.com/micro/util" ]]; then
    git clone https://github.com/micro/util.git $GOPATH/src/github.com/micro/util
fi


if [[ ! -d "$GOPATH/src/github.com/micro/go-log" ]]; then
    git clone https://github.com/micro/go-log.git $GOPATH/src/github.com/micro/go-log
fi


if [[ ! -d "$GOPATH/src/github.com/micro/mdns" ]]; then
    git clone https://github.com/micro/mdns.git $GOPATH/src/github.com/micro/mdns
fi


if [[ ! -d "$GOPATH/src/github.com/go-log/log" ]]; then
    git clone https://github.com/go-log/log.git $GOPATH/src/github.com/go-log/log
fi


if [[ ! -d "$GOPATH/src/github.com/mitchellh/mapstructure" ]]; then
    git clone https://github.com/mitchellh/mapstructure.git $GOPATH/src/github.com/mitchellh/mapstructure
fi

if [[ ! -d "$GOPATH/src/github.com/mitchellh/go-homedir" ]]; then
    git clone https://github.com/mitchellh/go-homedir.git $GOPATH/src/github.com/mitchellh/go-homedir
fi

if [[ ! -d "$GOPATH/src/github.com/mitchellh/hashstructure" ]]; then
    git clone https://github.com/mitchellh/hashstructure.git $GOPATH/src/github.com/mitchellh/hashstructure
fi

if [[ ! -d "$GOPATH/src/github.com/hashicorp/consul" ]]; then
    git clone https://github.com/hashicorp/consul.git $GOPATH/src/github.com/hashicorp/consul
fi

if [[ ! -d "$GOPATH/src/github.com/hashicorp/serf" ]]; then
    git clone https://github.com/hashicorp/serf.git $GOPATH/src/github.com/hashicorp/serf
fi

if [[ ! -d "$GOPATH/src/github.com/hashicorp/go-cleanhttp" ]]; then
    git clone https://github.com/hashicorp/go-cleanhttp.git $GOPATH/src/github.com/hashicorp/go-cleanhttp
fi

if [[ ! -d "$GOPATH/src/github.com/hashicorp/go-immutable-radix" ]]; then
    git clone https://github.com/hashicorp/go-immutable-radix.git $GOPATH/src/github.com/hashicorp/go-immutable-radix
fi

if [[ ! -d "$GOPATH/src/github.com/hashicorp/golang-lru" ]]; then
    git clone https://github.com/hashicorp/golang-lru.git $GOPATH/src/github.com/hashicorp/golang-lru
fi

if [[ ! -d "$GOPATH/src/github.com/hashicorp/go-rootcerts" ]]; then
    git clone https://github.com/hashicorp/go-rootcerts.git $GOPATH/src/github.com/hashicorp/go-rootcerts
fi

if [[ ! -d "$GOPATH/src/github.com/miekg/dns" ]]; then
    git clone https://github.com/miekg/dns.git $GOPATH/src/github.com/miekg/dns
fi

if [[ ! -d "$GOPATH/src/github.com/pborman/uuid" ]]; then
    git clone https://github.com/pborman/uuid.git $GOPATH/src/github.com/pborman/uuid
fi


if [[ ! -d "$GOPATH/src/github.com/pkg/errors" ]]; then
    git clone https://github.com/pkg/errors.git $GOPATH/src/github.com/pkg/errors
fi


if [[ ! -d "$GOPATH/src/github.com/google/uuid" ]]; then
    git clone https://github.com/google/uuid.git $GOPATH/src/github.com/google/uuid
fi

if [[ ! -d "$GOPATH/src/github.com/armon/go-metrics" ]]; then
    git clone https://github.com/armon/go-metrics.git $GOPATH/src/github.com/armon/go-metrics
fi

if [[ ! -d "$GOPATH/src/github.com/client9/misspell" ]]; then
    git clone https://github.com/client9/misspell.git $GOPATH/src/github.com/client9/misspell
fi

if [[ ! -d "$GOPATH/src/github.com/golang/lint" ]]; then
    git clone https://github.com/golang/lint.git $GOPATH/src/github.com/golang/lint
fi

if [[ ! -d "$GOPATH/src/github.com/golang/protobuf" ]]; then
    git clone https://github.com/golang/protobuf.git $GOPATH/src/github.com/golang/protobuf
fi


