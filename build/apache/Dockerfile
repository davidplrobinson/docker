FROM ubuntu:latest
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php php-mcrypt php-mysql
RUN echo "mysql-server mysql-server/root_password password changeme" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password changeme" | debconf-set-selections
RUN apt-get install -y mysql-server

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

COPY ./files/var/www/html/index.html /var/www/html/
COPY ./files/var/www/html/phptest.php /var/www/html/

EXPOSE 80
EXPOSE 3306
