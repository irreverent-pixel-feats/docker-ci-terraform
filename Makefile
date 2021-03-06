REPO = irreverentpixelfeats/ci-terraform
BASE_TAG = "0.11.3"

.PHONY: version deps build image all

version:
	bin/git-version ./latest-version
	diff -q latest-version data/version || cp -v latest-version data/version
	rm latest-version

deps: version

build: deps Dockerfile
	bin/build-image "${REPO}:${BASE_TAG}" "$(shell cat "data/version")"

all: build image
