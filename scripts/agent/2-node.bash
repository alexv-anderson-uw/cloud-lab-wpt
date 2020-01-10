#!/bin/bash

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
wget -qO- https://deb.opera.com/archive.key | apt-key add - && \
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
