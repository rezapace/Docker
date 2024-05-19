#!/bin/bash

# Install Docker
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Pull Postgres image
sudo docker pull postgres
