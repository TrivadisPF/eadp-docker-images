
#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

unzip ../../../infra/trino/trino-eadp-udf-470.zip -d ./plugins

docker build -t eadp/trino:470 .

rm -R ./plugins

docker tag eadp/trino:470 $DOCKER_REGISTRY/eadp/trino:470

docker push $DOCKER_REGISTRY/eadp/trino:470
