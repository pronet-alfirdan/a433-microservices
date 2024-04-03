#!/bin/bash

# 1. Build the Docker image from the Dockerfile
docker build -t item-app:v1 .

# 2. List all images in local
docker images

# 3. Rename the image to match Docker Hub format
# Replace 'yourusername' with your Docker Hub username
docker tag item-app:v1 pronetalfirdan20/item-app:v1

# 4. Login to Docker Hub via Terminal
# You will be prompted to enter your Docker Hub username and password
docker login

# 5. Push the image to Docker Hub
docker push pronetalfirdan20/item-app:v1
