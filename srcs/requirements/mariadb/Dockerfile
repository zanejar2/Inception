FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install mariadb-server -y

COPY ./tools/script.sh ./script.sh

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x script.sh

CMD ["./script.sh"]