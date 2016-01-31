FROM golang:1.5

MAINTAINER Daniel Holzmann <d@velopment.at>

RUN go get github.com/skynetservices/skydns \
    && cd $GOPATH/src/github.com/skynetservices/skydns \
    && go build -v

ADD run.sh /run.sh

EXPOSE 53/udp

CMD ["/run.sh"]
