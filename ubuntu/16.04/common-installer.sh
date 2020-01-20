#!/usr/bin/env bash

## https://httpd.apache.org/docs/2.4/programs/ab.html
## https://linux.die.net/man/1/htop
## https://linux.die.net/man/8/iftop
## https://linux.die.net/man/1/tree
## https://linux.die.net/man/1/pv
## https://linux.die.net/man/8/gparted

sudo apt update

sudo apt install -y \
    apache2-utils \
    htop \
    iftop \
    tree \
    pv \
    gparted
