FROM ubuntu:latest
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php5 php5-mysql php5-gd php5-dev php5-curl php-apc php5-cli php5-json

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

COPY ./files/var/www/html/index.html /var/www/html/
COPY ./files/var/www/html/phptest.php /var/www/html/

EXPOSE 80
