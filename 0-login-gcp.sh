#!/bin/bash

gcloud auth configure-docker
gcloud auth application-default login
# gcloud auth login
export PROJECT_ID=`gcloud config get-value project`

