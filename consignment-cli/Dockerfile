FROM ubuntu:latest

RUN mkdir -p /app
WORKDIR /app

#ADD consignment.json /app/consignment.json
#ADD consignment-cli  /app/consignment-cli
ADD . .

CMD ["./consignment-cli"]