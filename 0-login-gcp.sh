#!/bin/bash

gcloud auth application-default login
gcloud auth configure-docker
# gcloud auth login
export PROJECT_ID=`gcloud config get-value project`

