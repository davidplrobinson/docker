FROM debian:wheezy
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update
RUN apt-get install -y apache2

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

EXPOSE 80
