#escape=`

FROM w3serv/ubuntu:base
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get install -y git-all apache2 libpcre3 libpcre3-dev libapache2-mod-php
RUN apt-get install -y php7.1 libapache2-mod-php7.1 php7.1-cli php7.1-common php7.1-mbstring php7.1-gd php7.1-intl php7.1-xml php7.1-mysql php7.1-mcrypt php7.1-zip php7.1-dev php-curl
RUN a2enmod rewrite

RUN export DEBIAN_FRONTEND="noninteractive"
RUN echo "mysql-server mysql-server/root_password password changeme" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password changeme" | debconf-set-selections
RUN apt-get install -y mysql-server
