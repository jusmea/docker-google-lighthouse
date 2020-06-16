CACHE ?= --no-cache=1
VERSION ?= v6.0.0
.PHONY: all build publish latest
all: build publish
build:
	docker build -t jusmea/google-lighthouse:${VERSION} -t femtopixel/google-lighthouse --build-arg VERSION=${VERSION} ${CACHE} .
publish:
	docker push jusmea/google-lighthouse
