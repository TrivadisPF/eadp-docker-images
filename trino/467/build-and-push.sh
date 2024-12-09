
#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

unzip ../../../infra/trino/trino-eadp-udf-467.zip -d ./plugins

docker build -t eadp/trino:467 .

rm -R ./plugins

docker tag eadp/trino:467 $DOCKER_REGISTRY/eadp/trino:467

docker push $DOCKER_REGISTRY/eadp/trino:467
