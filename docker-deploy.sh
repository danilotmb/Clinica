#!/bin/bash

echo "Running composer install..."
composer install --no-dev

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate --force

# Avvia nginx e php-fpm
service nginx start
service php-fpm start
