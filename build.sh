#!/usr/bin/env bash

#### halt script on error
set -xe

PHP_VERSION=$1
IAMGE_TAG=$2

#### Build the Docker Images
if [[ -n "${PHP_VERSION}" && -n "${IAMGE_TAG}" ]]; then
    docker build -t ${IAMGE_TAG} -f ./Dockerfile-${PHP_VERSION} .
fi