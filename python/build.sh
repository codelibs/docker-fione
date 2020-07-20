#!/bin/bash

PYTHON_VERSION=3.8
PYTHON_OS_CODE=buster
DOCKER_FILE_URL=https://raw.githubusercontent.com/docker-library/python/master/${PYTHON_VERSION}/${PYTHON_OS_CODE}/Dockerfile
BUILD_OS_CODE=bionic

echo "Downloading ${DOCKER_FILE_URL}"
curl ${DOCKER_FILE_URL} \
  | sed -e "s/buildpack-deps:$PYTHON_OS_CODE/buildpack-deps:$BUILD_OS_CODE\nENV DEBIAN_FRONTEND noninteractive/" \
  > Dockerfile

PYTHON_VERSION=`cat Dockerfile | grep "ENV PYTHON_VERSION" | awk '{ print $3 }'`
DOCKER_TAG=codelibs/python:${PYTHON_VERSION}-${BUILD_OS_CODE}
echo "Building ${DOCKER_TAG}"
docker build --rm -t ${DOCKER_TAG} .

