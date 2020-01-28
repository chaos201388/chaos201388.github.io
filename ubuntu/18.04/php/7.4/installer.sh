#!/usr/bin/env bash

###############
### PHP 7.x ###
###############

### 0. Add repository to source list
sudo add-apt-repository ppa:ondrej/php -y

### 1. Update package information from sources
sudo apt update -y

### 2. List PHP packages
sudo apt list --installed | grep php

### 3. Remove PHP packages
# sudo apt purge php* -y
# sudo apt autoremove -y
# sudo rm -rf /etc/php/7.4

### 4. Install PHP packages
# sudo apt install software-properties-common -y
sudo apt install \
    php7.4-fpm \
    php7.4-common \
    php7.4-curl \
    php7.4-bcmath \
    php7.4-json \
    php7.4-mbstring \
    php7.4-mysql \
    php7.4-xml \
    php-redis \
    -y

### 5. Check PHP version
# php -v

### 6. Check PHP modules
# php -m | egrep -w 'pdo_mysql|curl|bcmath|dom|xml|mbstring|json|redis'

### 7. Check The PHP 7.4 FastCGI Process Manager
# sudo systemctl status php7.4-fpm.service

################
### Composer ###
################

### https://getcomposer.org/download/
### https://composer.github.io/pubkeys.html

### 0. Setup variables
HASH="baf1608c33254d00611ac1705c1d9958c817a1a33bce370c0595974b342601bd80b92a3f46067da89e3b06bff421f182"
BINDIR="/usr/local/bin"

### 1. Download composer installer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

### 2. Check composer installer signature
php -r "if (hash_file('sha384', 'composer-setup.php') === '${HASH}') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

### 3. Install composer
sudo php composer-setup.php --install-dir=${BINDIR} --filename=composer --version=1.9.1

### 4. Remove composer installer
php -r "unlink('composer-setup.php');"

### 5. Check composer path and version
# echo "composer path: $(which composer)"
# composer --version
