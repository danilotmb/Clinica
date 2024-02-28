#!/bin/bash

# Aggiungi i percorsi a composer e php
export PATH=$PATH:/opt/homebrew/bin/composer
export PATH=$PATH:/opt/homebrew/bin/php

echo "Running composer install..."
composer install --no-dev

echo "Caching config..."
/opt/homebrew/bin/php artisan config:cache

echo "Caching routes..."
/opt/homebrew/bin/php artisan route:cache

echo "Running migrations..."
/opt/homebrew/bin/php artisan migrate --force

# Avvia nginx e php-fpm
service nginx start
service php-fpm start