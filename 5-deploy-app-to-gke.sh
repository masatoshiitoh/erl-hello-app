#!/bin/bash

kubectl run hello-web --image=gcr.io/${PROJECT_ID}/erl-hello-app:v1 --port 8080

sleep 5
kubectl get pods
