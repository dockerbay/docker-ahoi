# Docker ahoi! - Round 2

## Goals

* Write your own Docker Compose file
* Learn Multicontainer Commands

## Help

* [Docs](https://docs.docker.com)
* [Docs > Compose file](https://docs.docker.com/compose/compose-file/)
* [Docs > Compose Commands](https://docs.docker.com/compose/reference/)

## Tasks - Round 2

# Step 1

Start with docker compose command and try to fix the `docker-compose.yml` file:

`docker-compose up -d`

# Step 2

Figure out how to persistent the database.
Find several solutions.

## A bit more help

__Example:__ Docker Compose file from Wordpress

```
version: '2'

services:

  wordpress:
    image: wordpress
    ports:
      - 8080:80
    environment:
      WORDPRESS_DB_PASSWORD: example

  mysql:
    image: mariadb
    environment:
      MYSQL_ROOT_PASSWORD: example
```
