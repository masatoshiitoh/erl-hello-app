#!/bin/bash

kubectl delete service hello-web

echo "please watch deleting status with..."
echo "gcloud compute forwarding-rules list"

echo "and, please delete container cluster with..."
echo "gcloud container clusters delete hello-cluster"

