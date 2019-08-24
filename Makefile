build:
	go build ./...

test:
	env "GORACE=halt_on_error=1" go test -v -race ./...

test_coverage:
	env "GORACE=halt_on_error=1" go test -v -covermode=count -coverprofile=coverage.out ./...

format:
	gofmt -s -w ./..

lint:
	golangci-lint run

setup_ci:
	GO111MODULE=on go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.17.1