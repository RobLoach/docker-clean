#!/bin/bash

# Stop all container processes
docker stop $(docker ps -a -q)

# Remove all the container images
docker rm $(docker ps -a -q)

# Clear all saved images
docker rmi $(docker images -a -q)
