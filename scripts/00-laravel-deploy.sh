#!/usr/bin/env bash

echo "Running composer install..."
composer install --working-dir=/var/www/html

echo "Running migrations..."
php artisan migrate --force