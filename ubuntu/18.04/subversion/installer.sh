#!/usr/bin/env bash

### References:
### @see https://www.fosslinux.com/6296/how-to-install-svn-server-on-ubuntu-18-04-lts.htm

sudo apt update -y
sudo apt install apache2 subversion libapache2-mod-svn -y

sudo mkdir -p /opt/svn

sudo svnadmin create /opt/svn/demo
sudo chown -R www-data:www-data /opt/svn/demo
sudo chmod -R 775 /opt/svn/demo

sudo htpasswd -cm /etc/svn-auth-users demouser
