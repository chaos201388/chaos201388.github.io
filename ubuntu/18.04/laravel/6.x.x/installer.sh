#!/usr/bin/env bash

#####################
### Lavavel 6.x.x ###
#####################

composer create-project --prefer-dist laravel/laravel laravel6 "^6.0.0"

# cd /path/to/laravel6
# sudo chgrp -R nginx storage bootstrap/cache
# sudo chmod -R ug+rwx storage bootstrap/cache
