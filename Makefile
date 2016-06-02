all: dev

hello:
	echo "HELLO"

console:
	docker-compose run console

dev:
	nodemon -x "docker-compose kill app && docker-compose rm -f app && docker-compose up app"