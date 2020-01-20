#!/usr/bin/env bash

# sudo apt-get purge -y docker-ce && \
#     sudo rm -rf /var/lib/docker && \
#         sudo rm -f /usr/local/bin/docker-compose


## https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo apt update && \
    sudo apt install -y lsb-core

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

sudo apt update && \
    apt-cache madison docker-ce && \
        sudo apt install -y docker-ce=18.03.0~ce-0~ubuntu


## https://docs.docker.com/compose/install/

sudo curl \
    -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` \
    -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
