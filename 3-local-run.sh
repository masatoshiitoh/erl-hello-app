#!/bin/bash
export PROJECT_ID=`gcloud config get-value project`
docker run -p 8080:8080 gcr.io/${PROJECT_ID}/erl-hello-app:v1
