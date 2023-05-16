#!/bin/bash

echo "Docker imags building process started"

# Build the Docker image
docker build -t reactjs:v1 .
echo "Docker images builded successfully"

echo "Creating docker container"

docker-compose up -d

echo "Container created successfully"
echo "Build script success"
