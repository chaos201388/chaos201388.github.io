#!/usr/bin/env bash

sudo apt update

sudo apt install -y lsb-core

## https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update

# apt-cache madison docker-ce

sudo apt install -y docker-ce=18.03.0~ce-0~ubuntu
