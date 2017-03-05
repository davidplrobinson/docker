FROM ubuntu:latest
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update
RUN export DEBIAN_FRONTEND="noninteractive"
#RUN debconf-set-selections <<< "mysql-server mysql-server/root_password password changeme"
#RUN debconf-set-selections <<< "mysql-server mysql-server/root_password_again password changeme"
RUN echo "mysql-server mysql-server/root_password password changeme" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password changeme" | debconf-set-selections
RUN apt-get install -y mysql-server

ENTRYPOINT ["/usr/bin/mysqld"]

EXPOSE 3306
