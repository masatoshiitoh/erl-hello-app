#!/bin/bash
export PROJECT_ID=`gcloud config get-value project`
gcloud docker -- push gcr.io/${PROJECT_ID}/erl-hello-app:v1
