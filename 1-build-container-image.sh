#!/bin/bash
# gcloud docker --authorize-only
export PROJECT_ID=`gcloud config get-value project`
gcloud auth configure-docker
docker build -t gcr.io/${PROJECT_ID}/erl-hello-app:v1 .
