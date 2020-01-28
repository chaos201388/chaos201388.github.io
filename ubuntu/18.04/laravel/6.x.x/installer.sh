#!/usr/bin/env bash

#####################
### Lavavel 6.x.x ###
#####################

composer create-project --prefer-dist laravel/laravel laravel6 "^6.0.0"

# cd /path/to/laravel6

# sudo chgrp -R nginx storage bootstrap/cache
# sudo chmod -R 0775 storage bootstrap/cache

### Setup .env file

# php artisan key:generate

# php artisan migrate:install
# php artisan migrate

# composer require laravel/ui --dev
# php artisan ui vue --auth

# sudo apt install npm
# npm install && npm run dev
