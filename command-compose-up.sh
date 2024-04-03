#!/bin/bash

# Login to GitHub Packages
echo "Please enter your GitHub username:"
read GITHUB_USERNAME
echo "Please enter your GitHub token:"
read -s GITHUB_TOKEN

docker login docker.pkg.github.com -u $GITHUB_USERNAME -p $GITHUB_TOKEN

# Run Docker Compose
docker-compose up
