FROM ubuntu:latest
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php php-mcrypt php-mysql

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

COPY ./files/var/www/html/index.html /var/www/html/
COPY ./files/var/www/html/phptest.php /var/www/html/

EXPOSE 80
