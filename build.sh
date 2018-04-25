#!/bin/sh
DOCKER_IMAGE=node-docker
docker build . -t $DOCKER_IMAGE
CONTAINER=$(docker create $DOCKER_IMAGE)
docker cp $CONTAINER:/var/task/awslambda-canvas.zip awslambda-canvas.zip
docker rm -v $CONTAINER
