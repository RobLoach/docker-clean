#!/bin/bash

# Stop all container processes
docker stop --time=5 $(docker ps -a -q)

# Remove all the container images
docker rm --force=true --volumes=true $(docker ps -a -q)

# Clear all saved images
docker rmi --force=true $(docker images -a -q)
