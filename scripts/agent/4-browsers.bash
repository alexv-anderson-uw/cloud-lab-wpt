#!/bin/bash

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    google-chrome-stable \
    google-chrome-beta \
    google-chrome-unstable \
    firefox \
    firefox-trunk \
    opera-stable \
    opera-beta \
    opera-developer \
    nodejs
