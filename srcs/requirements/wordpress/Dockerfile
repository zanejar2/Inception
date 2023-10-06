FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install php-fpm -y 

RUN apt-get install php-mysql -y

RUN apt-get install curl -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /script.sh

RUN chmod +x /script.sh

ENTRYPOINT [ "sh", "script.sh" ]

CMD ["php-fpm", "-R", "-F"]