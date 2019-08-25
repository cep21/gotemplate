build:
	go build -mod=readonly ./...

test:
	env "GORACE=halt_on_error=1" go test -v -race ./...

test_coverage:
	env "GORACE=halt_on_error=1" go test -v -covermode=count -coverprofile=coverage.out ./...

# Notice how I directly curl a SHA1 version of codecov-bash
codecov_coverage: test_coverage
	curl -s https://raw.githubusercontent.com/codecov/codecov-bash/1044b7a243e0ea0c05ed43c2acd8b7bb7cef340c/codecov | bash -s -- -f coverage.out  -Z

format:
	gofmt -s -w ./..
	find . -iname '*.go' -print0 | xargs -0 goimports -w

lint:
	golangci-lint run

# The exact version of CI tools should be specified in your go.mod file and referenced inside your tools.go file
setup_ci:
	go install github.com/golangci/golangci-lint/cmd/golangci-lint
