FROM golang:1.20 as builder

WORKDIR /tmp/tsnsrv

COPY src/go.mod src/go.sum ./
RUN go mod download && go mod verify

COPY src .

RUN go build -v -o /usr/local/bin/tsnsrv

CMD ["tsnsrv"]