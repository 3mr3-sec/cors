.DEFAULT_GOAL := build

build:
	@go-bindata -o files.go -fs -prefix "interface/" interface/...
	@go install .
.PHONY:build
