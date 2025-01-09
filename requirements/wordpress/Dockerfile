FROM wordpress:6.2-php8.1-fpm

# Copier les fichiers de configuration personnalisés (si nécessaire)
COPY wp-config.php /var/www/html/wp-config.php

# Assurez-vous que les permissions sont correctes
RUN chown -R www-data:www-data /var/www/html

EXPOSE 9000

CMD ["php-fpm"]
