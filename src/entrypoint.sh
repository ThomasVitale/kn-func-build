#!/usr/bin/env bash

set -e
set -o pipefail

echo ">>> Authenticating with container registry"

REGISTRY_URL=${1}
REGISTRY_USERNAME=${2}
REGISTRY_TOKEN=${3}

echo ""

echo ">>> Building function"

FUNCTION_PATH=${4}
FUNCTION_NAME=${5}
FUNCTION_VERSION=${6}
echo ${REGISTRY_USERNAME}$'\n'${REGISTRY_TOKEN}$'\n' |func build --builder=full --path ${FUNCTION_PATH} --image ${REGISTRY_URL}/${FUNCTION_NAME}:${FUNCTION_VERSION} --push --verbose
