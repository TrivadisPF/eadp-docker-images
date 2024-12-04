#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

docker build -t eadp/nifi:2.0.0 .

docker tag eadp/nifi:2.2.0 $DOCKER_REGISTRY/eadp/nifi:2.0.0

docker push $DOCKER_REGISTRY/eadp/nifi:2.0.0
