#!/usr/bin/env bash

IMAGE=flask-test-app:latest

docker build --no-cache -t ${IMAGE} .
