
FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /dummy-go-app

EXPOSE 6683

CMD [ "/dummy-go-app" ]

