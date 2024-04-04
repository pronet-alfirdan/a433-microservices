#!/bin/bash

# 1. Input the username dan password github 
echo "Masukan username github anda:"
read Github_username

echo "Masukan token github anda: "
read Github_token


# 2. Build the Docker image from the Dockerfile
docker build -t item-app:v1 .

# 3. List all images in local
docker images

# 4. Rename the image to match Github Packages format

docker tag item-app:v1 docker.pkg.github.com/aldanrp/a433-microservices/item-app:v1

# 5. Login to Github Packages via Terminal
# You will be prompted to enter your Github username and a personal access token as the password
echo "Please enter your Github username and a personal access token as the password"
docker login docker.pkg.github.com -u $Github_username -p $Github_token

# 6. Push the image to Github Packages
docker push docker.pkg.github.com/aldanrp/a433-microservices/item-app:v1