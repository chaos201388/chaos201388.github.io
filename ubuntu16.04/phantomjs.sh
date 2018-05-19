#!/usr/bin/env bash

## http://phantomjs.org/download.html

curl -LO https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
&& tar jxvf phantomjs-2.1.1-linux-x86_64.tar.bz2 \
&& mv phantomjs-2.1.1-linux-x86_64 phantomjs \
&& rm phantomjs-2.1.1-linux-x86_64.tar.bz2 \
echo 'export PATH=$PATH:/usr/local/phantomjs/bin' >> ~/.bashrc

## https://github.com/ariya/phantomjs
## https://cloudpack.media/28589
## https://www.npmjs.com/package/capture-phantomjs
