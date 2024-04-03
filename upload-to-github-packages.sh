#!/bin/bash

echo "Masukan username github anda:"
read Github_username

echo "Masukan token github anda: "
read Github_token


# 1. Build the Docker image from the Dockerfile
docker build -t item-app:v1 .

# 2. List all images in local
docker images

# 3. Rename the image to match Github Packages format
# Replace 'yourusername' with your Github username and 'yourrepo' with your repository name
docker tag item-app:v1 docker.pkg.github.com/pronet-alfirdan/image-node/item-app:v1

# 4. Login to Github Packages via Terminal
# You will be prompted to enter your Github username and a personal access token as the password
echo "Please enter your Github username and a personal access token as the password"
docker login docker.pkg.github.com -u $Github_username -p $Github_token

# 5. Push the image to Github Packages
docker push docker.pkg.github.com/pronet-alfirdan/image-node/item-app:v1