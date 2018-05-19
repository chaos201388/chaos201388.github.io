#!/usr/bin/env bash

## ApacheBench
## https://httpd.apache.org/docs/2.4/programs/ab.html

sudo apt-get update
sudo apt-get install apache2-utils

ab -n 4 -c 2 https://example.com/
