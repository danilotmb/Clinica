#!/usr/bin/env bash

echo "Running composer install..."
composer install --no-dev

echo "Running migrations..."
php artisan migrate --force