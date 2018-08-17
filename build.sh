#!/bin/sh

docker build -t ynishi/firebase-docker:8.11.3-4.0.3-2 . --no-cache
docker build -t ynishi/firebase-docker:latest .
