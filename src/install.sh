#!/usr/bin/env bash

set -o errexit

KN=1.9.0
echo "Installing kn ${KN}"
curl -sL https://github.com/knative/client/releases/download/knative-v${KN}/kn-linux-amd64 \
-o /usr/local/bin/kn && chmod +x /usr/local/bin/kn
kn version

FUNC=1.9.1
echo "Installing func ${FUNC}"
curl -sL https://github.com/knative/func/releases/download/knative-v${FUNC}/func_linux_amd64 \
-o /usr/local/bin/func && chmod +x /usr/local/bin/func
#curl -sL https://github.com/knative-sandbox/kn-plugin-func/releases/download/v${FUNC}/func_linux_amd64 \
-o /usr/local/bin/func && chmod +x /usr/local/bin/func
func version
