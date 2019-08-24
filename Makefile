build:
	go build ./...

test:
	env "GORACE=halt_on_error=1" go test -v -race ./...

test_coverage:
	go test -v -covermode=count -coverprofile=coverage.out ./...

format:
    gofmt -s -w ./...

lint:
	golangci-lint run

setup_ci:
	GO111MODULE=on go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.17.1
	GO111MODULE=on go get github.com/mattn/goveralls@4d9899298d217719a8aea971675da567f0e3f96d