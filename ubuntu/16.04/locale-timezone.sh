#!/usr/bin/env bash

## locale

sudo apt update

sudo apt install -y locales
sudo locale-gen zh_TW.UTF-8 zh_CN.UTF-8 en_US.UTF-8
locale -a

## timezone

timedatectl list-timezones | grep Asia/Taipei
sudo timedatectl set-timezone Asia/Taipei
timedatectl

## AWS EC2 instance timezone

# sudo ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime
