build:
	protoc -I. --go_out=plugins=micro:$(GOPATH)/src/github.com/shipper/user-service \
		proto/user/user.proto

	GOOS=linux GOARCH=amd64 go build 
	docker rmi -f user-service
	docker build -t user-service .

run:
	docker run -p 50053:50051 -e MICRO_SERVER_ADDRESS=:50051 -e MICRO_REGISTRY=mdns user-service