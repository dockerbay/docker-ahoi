#!/usr/bin/env bash

TAG=latest
IMAGE=dataduke/nginx-test-app:${TAG}

docker build --no-cache -t ${IMAGE} .
