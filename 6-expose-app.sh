#!/bin/bash

kubectl expose deployment hello-web --type=LoadBalancer --port 80 --target-port 8080

sleep 5
kubectl get service
