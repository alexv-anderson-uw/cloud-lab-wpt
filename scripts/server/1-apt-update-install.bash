#!/bin/bash

cd ~

until sudo apt-get update
do
    sleep 1
done

until sudo apt-get install -y git screen nginx beanstalkd zip unzip curl \
    php-fpm php-apcu php-sqlite3 php-curl php-gd php-zip php-mbstring php-xml \
    imagemagick ffmpeg libjpeg-turbo-progs libimage-exiftool-perl \
    software-properties-common python2.7 python-pip python-numpy python-scipy \
    psmisc
do
    sleep 1
done

sudo apt-get install -y python-software-properties
