#!/bin/bash
gcloud docker --authorize-only
docker build -t gcr.io/${PROJECT_ID}/erl-hello-app:v1 .
