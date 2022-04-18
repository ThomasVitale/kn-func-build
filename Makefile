TAG?=v1

build:
	docker build -t ghcr.io/thomasvitale/kn-func-build:$(TAG) . -f Dockerfile

push:
	docker push ghcr.io/thomasvitale/kn-func-build:$(TAG)