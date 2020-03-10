#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=leokury/house-prediction-price

# Step 2:  
# Authenticate & tag
docker login
docker tag house-price-prediction:v1 leokury/house-prediction-price
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push leokury/house-prediction-price
