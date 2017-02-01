#!/bin/bash

docker login -u $1 -p $2 $3 

docker stack rm biglittlechallenge
docker stack deploy biglittlechallenge -c docker-compose.yml --with-registry-auth