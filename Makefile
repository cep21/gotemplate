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

## ---- Delete this part after cloning ---- ####
setup_repo:
ifndef OWNER
	$(error OWNER is undefined)
endif
ifndef REPO
	$(error REPO is undefined)
endif
	git grep -l 'cep21/gotemplate' | xargs perl -i -pe"s#cep21/gotemplate#$(OWNER)/$(REPO)#g"
	git grep -l 'gotemplate' | xargs perl -i -pe"s#gotemplate#$(REPO)#g"
	mv gotemplate.go $(REPO).go
	mv gotemplate_example_test.go $(REPO)_example_test.go
	mv gotemplate_test.go $(REPO)_test.go
	echo "CircleCI URL: https://circleci.com/add-projects/gh/$(OWNER)"
	echo "Codecov URL:  https://codecov.io/gh/$(OWNER)/+"
	go test -v ./...
