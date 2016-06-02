all: up

hello:
	echo "HELLO"

up:
	nodemon -x "docker-compose kill app && docker-compose rm -f app && docker-compose up app"