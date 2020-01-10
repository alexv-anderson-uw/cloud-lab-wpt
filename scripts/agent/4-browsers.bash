#!/bin/bash

sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    google-chrome-stable \
    google-chrome-beta \
    google-chrome-unstable \
    firefox \
    firefox-trunk \
    opera-stable \
    opera-beta \
    opera-developer \
    nodejs
