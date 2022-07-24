FROM golang
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
RUN go build .
VOLUME [ "/data" ]

CMD ["./restapi"]