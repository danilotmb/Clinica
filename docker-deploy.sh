#!/bin/bash

# Aggiungi i percorsi a composer e php
export PATH=$PATH:/opt/homebrew/bin

echo "Running composer install..."
composer install --no-dev

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate --force

# Avvia nginx e php-fpm
/opt/homebrew/etc/nginx/sbin/nginx
/opt/homebrew/sbin/php-fpm
