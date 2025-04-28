.DEFAULT_GOAL := deploy


build-backend:
	make -C backend build

build-frontend:
	make -C frontend build

build-image:
	docker-compose build

up:
	docker-compose up -d

deploy: build-backend build-frontend build-image up



