.PHONY: build
build: Dockerfile
	docker build --rm --pull --tag fasm:latest .

.PHONY: run
run:
	docker run --rm --interactive --tty fasm:latest
