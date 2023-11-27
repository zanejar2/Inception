#!/bin/bash
service php7.4-fpm start
echo "listen=9000" >> /etc/php/7.4/fpm/pool.d/www.conf
wp core download --allow-root
wp config create --dbname=$MARIADB_NAME --dbuser=$MDB_USER --dbpass=$MDB_PW --dbhost=mariadb:3306 --allow-root
wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_EMAIL --allow-root
wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PW --allow-root
service php7.4-fpm stop
php-fpm7.4 -R -F