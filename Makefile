.DEFAULT_GOAL := build

prepare:
	@go install -a -v github.com/go-bindata/go-bindata/...@latest
	@go-bindata -o interface.go -fs -prefix "interface/" interface/...
.PHONY:prepare

build: prepare
	@go mod download && GOOS=linux GOARCH=amd64 go build -o cors && chmod +x ./cors
.PHONY:build

install:
	@go install .
.PHONY:install
