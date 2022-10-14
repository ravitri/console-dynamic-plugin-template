.PHONY: build
build:
	podman build -t quay.io/travi/console-dynamic-plugin-template:latest .

.PHONY: push
push:
	podman push quay.io/travi/console-dynamic-plugin-template:latest

.PHONY: build-push
build-push: build push
