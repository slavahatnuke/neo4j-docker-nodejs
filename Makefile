all: dev

hello:
	echo "HELLO"

dev:
	nodemon -x "make reload"

console:
	docker-compose run --rm console

reload: rm
	docker-compose up app

rm:
	docker-compose kill app && docker-compose rm --force --all app

up:
	docker-compose up -d app

stop:
	docker-compose stop --timeout 3