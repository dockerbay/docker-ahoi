#!/usr/bin/env bash

NAMESPACE=bastianklein
NAME=reverse-proxy-test-app
TAG=latest
IMAGE=${NAMESPACE}/${NAME}:${TAG}

docker build --no-cache -t ${IMAGE} .
