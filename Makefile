# local deploy
install:
	@go build -o bin/app ./...
run-local: install
	@./bin/app

# testing
test:
	@go test -v -cover -coverprofile=cover.out -race
display-cover:
	@go tool cover -html=cover.out

# container deploy
build:
	@docker build --tag hellow .
# -d flag will ignore STDOUT prints
run-detached-container: build
	@docker run -d --name hellow hellow
run-container: build
	@docker run --name hellow hellow
clean:
	-@docker rm hellow
	-@docker rmi hellow
