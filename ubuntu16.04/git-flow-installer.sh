#!/usr/bin/env bash

## https://github.com/petervanderdoes/gitflow-avh/wiki#installing-git-flow

wget --no-check-certificate -q https://raw.githubusercontent.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh

sudo bash gitflow-installer.sh install stable

sudo rm gitflow-installer.sh
