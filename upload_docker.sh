#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=danrhjones/ml_project

# Step 2:  
# Authenticate & tag
docker login
echo "Docker ID and Image: $dockerpath"
docker tag $dockerpath $dockerpath:v1.0.0

# Step 3:
# Push image to a docker repository
docker push danrhjones/ml_project:v1.0.1
