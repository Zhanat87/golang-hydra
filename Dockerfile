# golang image where workspace (GOPATH) configured at /go.
# https://hub.docker.com/_/golang/
FROM golang:latest

ADD ~/go/bin/golang-hydra /go/golang-hydra
ENTRYPOINT /go/golang-hydra

EXPOSE 8070