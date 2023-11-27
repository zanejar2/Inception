FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install php7.4 php-fpm php-mysql mariadb-client curl -y

WORKDIR /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]