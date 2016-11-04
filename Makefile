
IMG_HOST = lagner
IMG_NAME = basement
IMG_TAG = latest
IMG = $(IMG_HOST)/$(IMG_NAME):$(IMG_TAG)


.PHONY: build run clear


build:
	docker build --rm -t $(IMG) .

run:
	docker run -ti --rm -h $(IMG_HOST) $(IMG) entrypoint

clear:
	docker rmi $(shell docker images $(IMG) -q)
