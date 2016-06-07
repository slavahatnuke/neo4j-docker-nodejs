all: demo

## application
demo: setup reload

dev: setup
	nodemon -x "make reload"

setup:
	docker-compose run --rm --entrypoint ./setup.sh console

console:
	docker-compose run --rm console

reload: rm
	docker-compose up app

rm:
	docker-compose kill app && docker-compose rm --force --all app

stop:
	docker-compose stop --timeout 3

up:
	docker-compose up -d app

## docker aliases

build:
	docker-compose build

ps:
	docker-compose ps

