#!/usr/bin/env bash

set -e
set -o pipefail

echo ">>> Authenticating with container registry"

REGISTRY_URL=${1}
REGISTRY_USERNAME=${2}
REGISTRY_TOKEN=${3}
podman login ${REGISTRY_URL} -u ${REGISTRY_USERNAME} -p ${REGISTRY_TOKEN}

echo ""

echo ">>> Building function"

FUNCTION_PATH=${4}
FUNCTION_NAME=${5}
FUNCTION_VERSION=${6}
func build --path ${FUNCTION_PATH} --image ${REGISTRY_URL}/${REGISTRY_USERNAME}/${FUNCTION_NAME}:${FUNCTION_VERSION} --push
