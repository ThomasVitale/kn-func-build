TAG?=v1

build:
	docker build -t ghcr.io/qwpto/kn-func-build:$(TAG) . -f Dockerfile

push:
	docker push ghcr.io/qwpto/kn-func-build:$(TAG)