
TAG="test"
USER="josephthomashines"

.PHONY: build run push run-dh

build:
	docker build -t ${TAG} .

run:
	docker run -d --restart always -p 5001:5001 ${TAG}

push:
	dockerpush ${TAG} ${USER}/${TAG}

run-dh:
	docker run -d --restart always -p 5001:5001 ${USER}/${TAG}
