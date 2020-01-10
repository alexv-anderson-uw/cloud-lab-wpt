#!/bin/bash

echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install ttf-mscorefonts-installer fonts-noto*
sudo fc-cache -f -v

sudo apt-get clean
