#!/usr/bin/env bash
set -x
set -e

sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce


# Allow docker to be used by the current user
sudo groupadd -f docker
sudo gpasswd -a ${USER} docker
newgrp docker
sudo service docker start

