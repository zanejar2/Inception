FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install php7.4 php-fpm php-mysql curl -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir /var/www

RUN mkdir /var/www/html

COPY ./tools/script.sh /script.sh

RUN chmod +x /script.sh

CMD ["./script.sh"]