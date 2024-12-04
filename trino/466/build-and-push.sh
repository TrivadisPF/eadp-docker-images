
#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

unzip ../../../infra/trino/trino-eadp-udf-466.zip -d ./plugins

docker build -t eadp/trino:466 .

rm -R ./plugins

docker tag eadp/trino:466 $DOCKER_REGISTRY/eadp/trino:466

docker push $DOCKER_REGISTRY/eadp/trino:466
