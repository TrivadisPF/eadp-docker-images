#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

docker build -t eadp/airflow:2.10.2-python3.12 .

docker tag eadp/airflow:2.10.2-python3.12 $DOCKER_REGISTRY/eadp/airflow:2.10.2-python3.12

docker push $DOCKER_REGISTRY/eadp/airflow:2.10.2-python3.12
