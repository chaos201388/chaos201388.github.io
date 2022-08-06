#!/usr/bin/env bash

####################
### Redis Server ###
####################

sudo apt update -y
sudo apt install redis-server -y

# sudo vim /etc/redis/redis.conf
# sudo systemctl restart redis-server.service
# ss -an | grep 6379

# sudo ufw status verbose | grep 6379/tcp
# sudo ufw allow proto tcp from 192.168.0.0/24 to any port 6379

# sudo apt list --installed | grep redis
# sudo apt purge redis* -y
# sudo apt autoremove -y
