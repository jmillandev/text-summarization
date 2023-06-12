default: up

up:
	docker-compose up -d --build

build:
	docker-compose build
