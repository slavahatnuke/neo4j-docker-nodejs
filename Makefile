all: demo

## application
demo: setup reload

dev: setup
	nodemon -x "make reload"

setup:
	docker-compose run --rm --entrypoint "npm install" app

console:
	docker-compose run --rm --entrypoint bash app

reload: rm
	docker-compose up app

rm:
	docker-compose kill app && docker-compose rm --force --all app

stop:
	docker-compose stop --timeout 3

up:
	docker-compose up -d app

## docker aliases
ps:
	docker-compose ps

