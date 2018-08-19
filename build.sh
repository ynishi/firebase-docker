#!/bin/sh

NODE_VERSION=8.11.4
FIREBASE_TOOLS_VERSION=4.1.2
IMAGE_VERSION=1
TAG_VERSION=${NODE_VERSION}-${FIREBASE_TOOLS_VERSION}-${IMAGE_VERSION}

cat Dockerfile.template | \
  sed "s/@NODE_VERSION@/${NODE_VERSION}/g" | \
  sed "s/@FIREBASE_TOOLS_VERSION@/${FIREBASE_TOOLS_VERSION}/g" | \
  sed "s/@TAG_VERSION@/${TAG_VERSION}/g" > \
  Dockerfile

docker build -t ynishi/firebase-docker:${TAG_VERSION} . --no-cache
docker build -t ynishi/firebase-docker:latest .
