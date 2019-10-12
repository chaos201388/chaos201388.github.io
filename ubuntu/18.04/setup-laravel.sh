#!/usr/bin/env bash

sudo apt update -y
sudo apt upgrade -y

# Add PPA repository for PHP 7 installation
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y

sudo apt update -y

# Install PHP 7.3
sudo apt install php7.3-cli php7.3-common php7.3-curl php7.3-bcmath php7.3-json php7.3-mbstring php7.3-mysql php7.3-xml

# Install composer
wget https://raw.githubusercontent.com/composer/getcomposer.org/fc4099e0ac116a1c8f61fffaf6693594dda79d16/web/installer -O - -q | php -- --quiet

# Setup composer
sudo mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
