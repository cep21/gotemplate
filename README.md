# gotemplate
[![CircleCI](https://circleci.com/gh/cep21/gotemplate.svg)](https://circleci.com/gh/cep21/gotemplate)
[![GoDoc](https://godoc.org/github.com/cep21/gotemplate?status.svg)](https://godoc.org/github.com/cep21/gotemplate)
[![codecov](https://codecov.io/gh/cep21/gotemplate/branch/master/graph/badge.svg)](https://codecov.io/gh/cep21/gotemplate)

A short one sentence description of your code, such as Gotemplate is a template repository for GitHub go libraries.

Explain why (not how) someone would want to use this code.  This should be a bit of a sales pitch.  Use gotemplate to
spin up a new Go library on GitHub, without making it a direct fork.  It sets you up with the minimal parts you'll want
to ensure your code starts and stays at a high quality.  You can read more about template repositories
[from GitHub](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/).

This setup includes:
* Continuous testing with [CircleCI](https://circleci.com/) on multiple go versions.
* Static analysis checking with [golangci-lint](https://github.com/golangci/golangci-lint).
* Setup [go modules](https://github.com/golang/go/wiki/Modules).
* Widely usable source license Apache 2.0
* [godoc](https://godoc.org) source code documentation
* Code coverage reporting with [codecov](https://codecov.io)
* [Makefile](https://en.wikipedia.org/wiki/Makefile) helper for formatting, building, and running your code.
* Testable [examples](https://blog.golang.org/examples).
* Basic [README](https://en.wikipedia.org/wiki/README) file with good starting sections.

# Usage

Include usage examples.  These can often be links or direct copies from your
[example test file](./gotemplate_example_test.go).

```go
    func ExampleRemoveMe() {
    	fmt.Println(gotemplate.RemoveMe("hello", "world"))
    }
```

To use gotemplate:
1. Follow the instructions on [GitHub](https://help.github.com/en/articles/creating-a-template-repository) when you
   create your repository
2. Sign up with [CircleCI](https://circleci.com) and [codecov](https://codecov.io).
3. Search/replace the string "cep21/gotemplate" with "{USERNAME}/{REPO_NAME}"
4. Take out the parts of the README that don't make sense.  Keep the sections you want.
5. Push your repository and watch it build.

# Design Rational

Talk about why you wrote this code the way you did.  A lot of this may focus on what you decided **not** to do.
For the things you did do, explain why it's important.  This may serve as a mini-FAQ while your project is small.
Move this out to something more heavy weight like [GitHub Pages](https://pages.github.com) if your project gets very
complex.

## License file

A License file is manditory for open source projects.  Which you use is up to you, but most companies I've seen
appriciate [Apache 2.0](https://tldrlegal.com/license/apache-license-2.0-(apache-2.0)) the most explicitly for the
patent stuff inside it.  Another reasonable choice is [MIT](https://tldrlegal.com/license/mit-license).

## README

A Readme file is the first thing people see when they visit your page and should convince someone to want to use your
code and be a launching pad to other tasks.  When your project is a huge hit, you can move this somewhere else, but for
small projects a README should be enough for all information you need.

## Makefile

A makefile is a concise way to communicate what common terms like "linting" or "testing" mean exactly.  For example,
testing isn't just "go test", it's "go test on all files with the -race detector". Similarly, linting isn't just
"running go vet", it may be "running golangci-lint with some flags".  Makefile targets should be common software terms
like "build" or "test", that contain specific commands for what that term means.

## Continuous testing

CircleCI allows you to run  checks on requests and commits to make sure your code stays working.
Another popular choice is [TravisCI](https://travis-ci.org).  Travis is a fine choice: I just prefer CircleCI.  I've
talked about why on a previous post
[The 13 Things That Make a Good Build System](https://www.signalfx.com/blog/the-13-things-that-make-a-good-build-system/).
An important bonus for me is that CircleCI is free for private git repositories, which lets me test out code before I'm
ready to make it public.

## Static analysis

Automatic detection of software bugs is very powerful and can help push new code above a minimum bar of quality.
The best for Go right now is [Golangci-lint](https://github.com/golangci/golangci-lint).  By combining the output of
many linters, reusing source code parsing between linters, using semantic versioning, and configuration from a yml file
it allows easy, precise, reproducible, and comprehensive static analysis.

## Testable examples

I really like testable examples as code documentation that verifies itself as correct (unlike actual documentation blocks
which are never compiled).  Testable examples also integrate well with godoc and most IDE help dialogs.

## doc.go

Package level documentation is useful for godoc users: which is the standard documentation format for Go.  Package level
documentation is generally placed in a separate [doc.go](./doc.go) file.

## Visible code coverage

Testing code coverage of some amount can communicate a commitment to having working code. Both
[codecov](https://codecov.io) and [coveralls](https://docs.coveralls.io/go)
are fine.  I've defaulted to codecov since it integrates well with CircleCI and did not require a separate step of
uploading a token to your CI's environment: making it easier for new developers to just get started.

Codecov usually recommends downloading and executing a shell command from an unversioned URL.  To mitigate issues
around this, I instead download directly from
[a SHA1 version](https://raw.githubusercontent.com/codecov/codecov-bash/1044b7a243e0ea0c05ed43c2acd8b7bb7cef340c/codecov).

## Go modules

Modules are the now standard way to manage dependencies of Go code.  If the gotemplate project had dependencies, I would
also check in a go.sum file.  The CI process runs both `go mod download` and `go mod verify` to check your dependencies.
The build process uses `-mod=readonly` to ensure your CI checks the `go.mod` file for missing dependencies.

# License

This library is licensed under the Apache 2.0 License.

# Contributing

Tell people how they can contribute.  Start with something simple and create a `CONTRIBUTING.md` file if you really
need it.

Contributions welcome!  Submit a pull request on github and make sure your code passes `make lint test`.  For
large changes, I strongly recommend [creating an issue](https://github.com/cep21/gotemplate/issues) on GitHub first to
confirm your change will be accepted before writing a lot of code.