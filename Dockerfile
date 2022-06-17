FROM golang:1.16-alpine

WORKDIR /app

# Dependencies
COPY go.mod ./
COPY go.sum ./
RUN go mod download

# Source code
COPY cmd ./cmd
RUN go build -o /app/hello ./...

# Clean up
RUN rm -rf cmd/
RUN rm go.mod go.sum

CMD [ "/app/hello" ]