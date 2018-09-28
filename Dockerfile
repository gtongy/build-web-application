FROM golang:1.10
RUN mkdir -p /go/src/github.com/gtongy/build-web-application
ADD . /go/src/github.com/gtongy/build-web-application
WORKDIR /go/src/github.com/gtongy/build-web-application
EXPOSE 9999
CMD ["/usr/local/go/bin/go", "run", "/go/src/github.com/gtongy/build-web-application/main.go"]
