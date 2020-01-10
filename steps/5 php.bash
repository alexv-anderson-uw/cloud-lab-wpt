#!/bin/bash

cd ~

PHPVER=$(find /etc/php/7.* -maxdepth 0 -type d -printf '%f')
cat wptserver-install/configs/php/php.ini | sudo tee /etc/php/$PHPVER/fpm/php.ini
cat wptserver-install/configs/php/pool.www.conf | sed "s/%USER%/$USER/" | sudo tee /etc/php/$PHPVER/fpm/pool.d/www.conf
sudo service php$PHPVER-fpm restart
