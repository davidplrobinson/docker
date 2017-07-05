#escape=`

FROM ubuntu:artful
MAINTAINER david.pl.robinson@googlemail.com

RUN apt-get update -y
RUN apt-get install -y locales language-pack-en-base software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update -y 
