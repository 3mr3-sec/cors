.DEFAULT_GOAL := build

prepare:
	@go install -a -v github.com/go-bindata/go-bindata/...@latest
.PHONY:prepare

build: prepare
	@go-bindata -o interface.go -fs -prefix "interface/" interface/...
	@go install .
.PHONY:build
