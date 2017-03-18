#!/usr/bin/env bash

IMAGE=bastianklein/flask-test-app:latest

docker build --no-cache -t ${IMAGE} .
