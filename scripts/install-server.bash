#!/bin/bash

chmod 744 ./server/*

./server/1-apt-update-install.bash
./server/2-pip.bash
./server/3-git.bash
./server/4-os.bash
./server/5-php.bash
./server/6-nginx.bash
./server/7-wpt.bash
