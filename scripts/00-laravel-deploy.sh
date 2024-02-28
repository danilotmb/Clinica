#!/usr/bin/env bash

echo "Running composer install..."
composer install

echo "Running migrations..."
php artisan migrate --force