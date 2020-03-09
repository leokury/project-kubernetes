#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=leokury/house-prediction-price

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run house-prediction-pod --image=leokury/house-prediction-price --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 15
kubectl port-forward deployment.apps/house-prediction-pod 8000:80


