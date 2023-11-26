#!/bin/bash
# service php7.4-fpm start
cd /var/www/html
wp core download --allow-root
wp core config --dbname=${MARIADB_NAME} --dbuser=${MDB_USER} --dbpass=${MDB_PW} --dbhost=mariadb --allow-root
wp core install --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${WP_USER} --admin_password=${WP_PW} --admin_email=$WP_EMAIL --skip-email --allow-root
php-fpm7.4 -R -F