#!/usr/bin/env bash

apt-get update
apt-get install locales

locale-gen zh_TW.UTF-8 zh_CN.UTF-8 en_US.UTF-8

locale -a
