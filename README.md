# Docker ahoi! - Round 1

## Goals

* Write your own Dockerfile
* Learn basic Docker Commands

## Help

* [Docs](https://docs.docker.com)
* [Docs > Dockerfile](https://docs.docker.com/engine/reference/builder/)
* [Docs > Commandline](https://docs.docker.com/engine/reference/commandline/cli)

## Tasks - Round 1

### Write your first Dockerfile

Fill out `Dockerfile`

### Build docker image

`docker build -t flask-app-image:latest .`

### Run docker container

`docker run --publish $DOCKER_IP:80:5000 --name=my-flask-app-container flask-app-image`

...or publish all ports. *Caution: Not recommended for production.*

`docker run -P --name=my-flask-app-container flask-app-image`

### List running docker containers

`docker ps`

### Stop docker container

`docker stop my-flask-app-container`

### List all docker containers

`docker ps -a`

### Remove created container

`docker rm my-flask-app-container`

### Run docker container with removal

`docker run --expose=5000 --publish $DOCKER_IP:80:5000 --name=my-flask-app-container --rm flask-app-image`

### Run docker container in background

`docker run --expose=5000 --publish $DOCKER_IP:80:5000 --name=my-flask-app-container -d flask-app-image`

### Step into container

`docker exec -it my-flask-app-container sh`

### Stop container

`docker stop my-flask-app-container`

### Start container

`docker start my-flask-app-container`

### Run docker container and step into

`docker run --expose=5000 --publish $DOCKER_IP:80:5000 --name=my-flask-app-container --rm -it flask-app-image sh`

### Kill container with SIGTERM

`docker kill my-flask-app-container`

### Remove our image

`docker rmi flask-app-image`
