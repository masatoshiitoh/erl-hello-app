#!/bin/bash
# gcloud docker --authorize-only
gcloud auth configure-docker
docker build -t gcr.io/${PROJECT_ID}/erl-hello-app:v1 .
