#!/bin/bash
# use this script pour install VSCode extensions
# or run some scripts at start
# this script will be sart at every docker compose up
echo "🍊 Installing VSCode extensions..."

OPENVSCODE_SERVER_ROOT="/home/.openvscode-server"
OPENVSCODE="${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server"

${OPENVSCODE} --install-extension pkief.material-icon-theme
${OPENVSCODE} --install-extension gitpod.gitpod-theme
${OPENVSCODE} --install-extension ms-azuretools.vscode-docker
${OPENVSCODE} --install-extension golang.Go

node_version=$(node --version)
echo "👋 NodeJS version: ${node_version}"

golang_version=$(go version)
echo "👋 Golang version: ${golang_version}"

tinygo_version=$(tinygo version)
echo "👋 TinyGo version: ${tinygo_version}"
