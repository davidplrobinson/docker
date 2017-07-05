#escape=`

FROM w3serv/ubuntu:lamp
MAINTAINER david.pl.robinson@googlemail.com

RUN cd /var/www `
 && git clone https://github.com/phacility/libphutil.git `
 && git clone https://github.com/phacility/arcanist.git `
 && git clone https://github.com/phacility/phabricator.git

#ENTRYPOINT ["/usr/bin/mysqld"]

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

COPY ./files/etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/

EXPOSE 80
EXPOSE 3306
