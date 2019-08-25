# gotemplate
[![CircleCI](https://circleci.com/gh/cep21/gotemplate.svg)](https://circleci.com/gh/cep21/gotemplate)
[![GoDoc](https://godoc.org/github.com/cep21/gotemplate?status.svg)](https://godoc.org/github.com/cep21/gotemplate)
[![codecov](https://codecov.io/gh/cep21/gotemplate/branch/master/graph/badge.svg)](https://codecov.io/gh/cep21/gotemplate)
![GitHub](https://img.shields.io/github/license/cep21/gotemplate)

A short one sentence description of your code, such as Gotemplate is a template repository for GitHub go libraries.

Explain why (not how) someone would want to use this code.  This should be a bit of a sales pitch.  Use gotemplate to
spin up a new Go library on GitHub, without making it a direct fork.  It sets you up with the minimal parts you'll want
to ensure your code starts and stays at a high quality.  You can read more about template repositories.
[from GitHub](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/).

This setup includes:
* Continuous testing with (CircleCI)[https://circleci.com/] on multiple go versions.
* Static analysis checking with (golangci-lint)[https://github.com/golangci/golangci-lint].
* Setup [go modules](https://github.com/golang/go/wiki/Modules).
* Widely usable source license Apache 2.0
* [godoc](https://godoc.org) source code documentation
* Code coverage reporting with [codecov](https://codecov.io)
* [Makefile](https://en.wikipedia.org/wiki/Makefile) helper for formatting, building, and running your code.
* Testable [examples](https://blog.golang.org/examples).
* Basic [README](https://en.wikipedia.org/wiki/README) file with good starting sections.

# Usage

Include usage examples.  These can often be direct copies from your example_test.go file

```go
    func ExampleRemoveMe() {
    	fmt.Println(gotemplate.RemoveMe("hello", "world"))
    }
```

To use gotemplate, follow the instructions on [github](https://help.github.com/en/articles/creating-a-template-repository).

# License

This library is licensed under the Apache 2.0 License.

# Contributing

Tell people how they can contribute.  Start with something simple and create a `CONTRIBUTING.md` file if you really
need it.

Contributions welcome!  Submit a pull request on github and make sure your code passes `make lint test`.  For
large changes, I strongly recommend [creating an issue](https://github.com/cep21/gotemplate/issues) on GitHub first to
confirm your change will be accepted before writing a lot of code.