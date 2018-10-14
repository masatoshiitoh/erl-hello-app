#!/bin/bash

export PROJECT_ID=`gcloud config get-value project`
kubectl expose deployment hello-web --type=LoadBalancer --port 80 --target-port 8080

sleep 5
kubectl get service
