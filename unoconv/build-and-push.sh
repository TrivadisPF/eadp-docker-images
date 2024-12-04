#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

docker build --tag eadp/unoconv:latest .

docker image tag eadp/unoconv:latest dataplatform-registry:5020/eadp/unoconv:latest
docker image push dataplatform-registry:5020/eadp/unoconv:latest