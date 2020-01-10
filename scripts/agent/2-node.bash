#!/bin/bash

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/google.list
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list