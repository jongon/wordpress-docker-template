FROM wordpress:4.9.8-php7.2-apache AS final
COPY ./wp-content/themes /var/html/www/wp-content/themes
COPY ./wp-content/plugins /var/htm/www/wp-content/plugins