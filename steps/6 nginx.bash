#!/bin/bash

cd ~

cat wptserver-install/configs/nginx/fastcgi.conf | sudo tee /etc/nginx/fastcgi.conf
cat wptserver-install/configs/nginx/fastcgi_params | sudo tee /etc/nginx/fastcgi_params
cat wptserver-install/configs/nginx/nginx.conf | sed "s/%USER%/$USER/" | sudo tee /etc/nginx/nginx.conf
cat wptserver-install/configs/nginx/sites.default | sudo tee /etc/nginx/sites-available/default
sudo service nginx restart
