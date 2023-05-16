#!/bin/bash

# Set the name and version of the image
IMAGE_NAME=reactjs
IMAGE_VERSION=v1

# Tag the image with the Docker Hub repository name and version
docker tag $IMAGE_NAME:$IMAGE_VERSION taruns697/prod:$IMAGE_VERSION
docker tag $IMAGE_NAME:$IMAGE_VERSION taruns697/dev:$IMAGE_VERSION

# Push the image to Docker Hub
docker push taruns697/prod:$IMAGE_VERSION
docker push taruns697/dev:$IMAGE_VERSION
