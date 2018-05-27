#!/usr/bin/env bash

## https://linux.die.net/man/1/htop
## https://linux.die.net/man/1/tree
## https://httpd.apache.org/docs/2.4/programs/ab.html

sudo apt update

sudo apt install -y htop \
    tree \
    apache2-utils
