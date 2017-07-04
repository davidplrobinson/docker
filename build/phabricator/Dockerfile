#escape=`

FROM ubuntu:latest
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update
RUN apt-get install -y git-all
RUN apt-get install -y apache2
#RUN apt-get install -y pcre-devel
RUN apt-get install -y php-pear
RUN pecl install apc
RUN apt-get install -y php libapache2-mod-php php-mcrypt php-mysql php-mbstring

RUN export DEBIAN_FRONTEND="noninteractive"
RUN echo "mysql-server mysql-server/root_password password changeme" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password changeme" | debconf-set-selections
RUN apt-get install -y mysql-server

RUN cd /var/www `
 && git clone https://github.com/phacility/libphutil.git `
 && git clone https://github.com/phacility/arcanist.git `
 && git clone https://github.com/phacility/phabricator.git

#ENTRYPOINT ["/usr/bin/mysqld"]

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

#COPY ./files/var/www/html/index.html /var/www/html/
#COPY ./files/var/www/html/phptest.php /var/www/html/

EXPOSE 80
EXPOSE 3306
