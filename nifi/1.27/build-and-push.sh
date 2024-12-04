#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

docker build -t eadp/nifi:1.27.0-python3.10 .

docker tag eadp/nifi:1.27.0-python3.10 $DOCKER_REGISTRY/eadp/nifi:1.27.0-python3.10

docker push $DOCKER_REGISTRY/eadp/nifi:1.27.0-python3.10
