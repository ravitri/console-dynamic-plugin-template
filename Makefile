.PHONY: build
build: ## Build image for console-dynamic-plugin-template
	podman build -t quay.io/travi/console-dynamic-plugin-template:latest .

.PHONY: push
build: ## Push the built image to registry
	podman push quay.io/travi/console-dynamic-plugin-template:latest

.PHONY: build-push
build-push: build push ## Build image for console-dynamic-plugin-template
