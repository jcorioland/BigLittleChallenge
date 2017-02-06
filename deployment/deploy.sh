#!/bin/bash

# login into the registry
docker login -u $1 -p $2 $3 

# remove the old stack
docker stack rm biglittlechallenge

# deploy or upgrade the big little challenge stack
docker stack deploy biglittlechallenge -c docker-compose.yml --with-registry-auth
