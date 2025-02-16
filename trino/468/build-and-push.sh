
#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

unzip ../../../infra/trino/trino-eadp-udf-468.zip -d ./plugins

docker build -t eadp/trino:468 .

rm -R ./plugins

docker tag eadp/trino:468 $DOCKER_REGISTRY/eadp/trino:468

docker push $DOCKER_REGISTRY/eadp/trino:468
