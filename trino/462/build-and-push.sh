
#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

unzip ../../../infra/trino/trino-eadp-udf-462.zip -d ./plugins

docker build -t eadp/trino:462 .

rm -R ./plugins

docker tag eadp/trino:462 $DOCKER_REGISTRY/eadp/trino:462

docker push $DOCKER_REGISTRY/eadp/trino:462
