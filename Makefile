.DEFAULT_GOAL := build

.PHONY: fmt vet build

test:
	go test ./...
	@echo "Tests completed."

fmt: test
	go fmt ./...
	@echo "Formatting completed."

vet: fmt
	go vet ./...
	@echo "Vet completed."

build: vet
	go build ./...
	@echo "Build completed."