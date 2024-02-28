#!/bin/bash

# Aggiungi i percorsi a composer e php
export PATH=$PATH:/opt/homebrew/bin

echo "Running composer install..."
/opt/homebrew/bin/composer install --no-dev

echo "Caching config..."
/opt/homebrew/bin/php artisan config:cache

echo "Caching routes..."
/opt/homebrew/bin/php artisan route:cache

echo "Running migrations..."
/opt/homebrew/bin/php artisan migrate --force

# Avvia nginx e php-fpm
/usr/local/bin/nginx
/opt/homebrew/bin/php-fpm
