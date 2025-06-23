#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

docker build -t eadp/airflow:3.0.1-python3.12 .

docker tag eadp/airflow:3.0.1-python3.12 $DOCKER_REGISTRY/eadp/airflow:3.0.1-python3.12

docker push $DOCKER_REGISTRY/eadp/airflow:3.0.1-python3.12
