#!/bin/bash

chmod 744 ./agent/*

./agent/1-apt-update-install.bash
./agent/2-node.bash
./agent/3-apt-repo-add.bash
./agent/4-browsers.bash
./agent/5-fonts-clean.bash
./agent/6-npm-pip.bash
