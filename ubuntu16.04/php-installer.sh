#!/usr/bin/env bash

sudo add-apt-repository ppa:ondrej/php
sudo apt update

# apt policy | grep php
# apt show php7.2

sudo apt install -y php7.2 php7.2-fpm php7.2-bcmath php7.2-curl php7.2-mbstring php7.2-mysql php7.2-zip

sudo sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php/7.2/fpm/php.ini
sudo systemctl restart php7.2-fpm
