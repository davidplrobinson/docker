FROM ubuntu:latest
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update
RUN apt-get install -y apache2

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

COPY ./files/var/www/html/index.html /var/www/html/

EXPOSE 80
