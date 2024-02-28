# Usa l'immagine nginx-php-fpm come base
FROM richarvey/nginx-php-fpm:1.10.3

# Copia tutti i file del progetto nella directory /var/www/html del container
COPY . /var/www/html

# Cambia la directory di lavoro
WORKDIR /var/www/html

# Esegui i comandi necessari per configurare il progetto Laravel
RUN composer global require hirak/prestissimo
RUN composer install --no-dev

# Cache delle configurazioni di Laravel
RUN php artisan config:cache

# Cache delle rotte di Laravel
RUN php artisan route:cache

# Esegui le migrazioni del database
RUN php artisan migrate --force

# Esponi la porta 80
EXPOSE 80

# Avvia nginx-php-fpm
CMD ["/start.sh"]
