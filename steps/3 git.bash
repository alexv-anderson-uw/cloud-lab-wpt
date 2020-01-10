#!/bin/bash

sudo chown -R $USER:$USER /var/www

cd /var/www

until git clone https://github.com/WPO-Foundation/webpagetest.git
do
    sleep 1
done

cd /var/www/webpagetest

git checkout origin/release
git branch -D master
git pull origin release

cd ~

until git clone https://github.com/WPO-Foundation/wptserver-install.git
do
    sleep 1
done
