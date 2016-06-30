# Neo4j + docker + docker-compose + node.js example

## how to start
just make it:
- run terminal
- `$ make`

### dependencies:
- `make`
- `docker` [https://www.docker.com/products/docker-engine](https://www.docker.com/products/docker-engine)
- `docker-compose` [https://docs.docker.com/compose/](https://docs.docker.com/compose/)

### docker.host
It depends on platform:
- OSX: please check `docker-machine ip`
- Linux: `127.0.0.1` or `localhost`

### neo4j
It binds to port `docker.host:17474` [http://docker.host:17474/](http://docker.host:17474/) This is web interface to db.
- Login: `neo4j`
- Password: `test`

### app
It binds to port `docker.host:13000` [http://docker.host:13000/](http://docker.host:13000/)
There are AngularJS/Bootstrap the simplest client for example. Just click `load` button.

#### Files
Please check files to clarify concepts
- [docker-compose.yml](docker-compose.yml) services configuration
- [Makefile](Makefile) helper to manage 
- [app.js](./app/app.js) the simplest node.js app
- [index.html](./app/view/index.html) the simplest AngularJS app

#### Have a fun! 
Use microservice and have a fun!
Best regards [+1G Team](http://plus1generation.com/) and [slava hatnuke](https://ua.linkedin.com/in/slavahatnuke)
