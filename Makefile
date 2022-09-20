.DEFAULT_GOAL := build

build:
	@go-bindata -o interface.go -fs -prefix "interface/" interface/...
	@go install .
.PHONY:build
