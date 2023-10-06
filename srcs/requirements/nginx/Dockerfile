FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install nginx -y

RUN apt-get install openssl -y

COPY ./tools/index.html /var/www/html

COPY ./conf/nginx.conf etc/nginx/conf.d

RUN chmod 755 /var/www/html

RUN openssl genpkey -algorithm RSA -out /etc/ssl/private.key

RUN openssl req -new -key /etc/ssl/private.key -out /etc/ssl/csr.pem -subj "/C=MO/L=BG/O=1337/OU=student/CN=zanejar/UID=zanejar"

RUN openssl x509 -req -days 365 -in /etc/ssl/csr.pem -signkey /etc/ssl/private.key -out /etc/ssl/certificate.crt

CMD ["nginx", "-g", "daemon off;"]