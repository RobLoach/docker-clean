#!/bin/sh
#
# Docker Clean
# http://github.com/robloach/docker-clean
# License: MIT

# Find the Docker container processes.
PS=$(docker ps -a -q)
if [ -n "${PS}" ]; then
  # Stop all running containers gracefully.
	docker stop --time=10 $PS

	# Remove all of the containers, and associated volumes.
	docker rm -f -v $PS
fi

# Get a list of all the existing Docker images.
IMAGES=$(docker images -a -q)
if [ -n "${IMAGES}" ]; then
  # Clear all saved container images
	docker rmi -f $IMAGES
fi
