ARG WORDPRESS_TAG=4.9-apache
FROM wordpress:${WORDPRESS_TAG} AS final
COPY ./wp-content/themes /var/html/www/wp-content/themes
COPY ./wp-content/plugins /var/htm/www/wp-content/plugins