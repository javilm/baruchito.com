REGISTRY_HOST=192.168.1.16:5000
IMAGE=baruchito-com
TAG=1
CACHE=--no-cache

build:
	docker buildx build \
		--builder lavnet-builder \
		--platform linux/amd64,linux/arm64 \
		-t $(REGISTRY_HOST)/$(IMAGE):$(TAG) \
		$(CACHE) \
		--push \
		.

.PHONY: build
