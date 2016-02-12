#!/bin/bash

set -o nounset -o errexit

TIMESTAMP=$(date +"%Y%m%d%H%M%S")
IMAGE=nginx-simple
#REGISTRY="docker.otenv.com"

docker build -t ${IMAGE} .
# docker tag ${IMAGE} $REGISTRY/${IMAGE}:${TIMESTAMP}
# docker push $REGISTRY/${IMAGE}:${TIMESTAMP}

echo "Run it using:"
echo "docker run -p 8080:80 nginx-simple"
