FROM ubuntu:22.04

RUN apt-get update -y

RUN apt-get install -y apache2 apache2-utils

RUN apt clean

RUN apt install curl -y

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
