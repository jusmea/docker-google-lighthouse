CACHE ?= --no-cache=1
VERSION ?= v6.4.1
.PHONY: all build publish latest
all: build publish
build:
	docker build -t jusmea/google-lighthouse:${VERSION} -t jusmea/google-lighthouse --build-arg VERSION=${VERSION} ${CACHE} .
publish:
	docker push jusmea/google-lighthouse
