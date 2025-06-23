
#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

unzip ../../../infra/trino/trino-eadp-udf-475.zip -d ./plugins

docker build -t eadp/trino:475 .

rm -R ./plugins

docker tag eadp/trino:475 $DOCKER_REGISTRY/eadp/trino:475

docker push $DOCKER_REGISTRY/eadp/trino:475
