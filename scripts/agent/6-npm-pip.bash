#!/bin/bash

sudo npm install -g lighthouse && \

pip install \
    dnspython \
    monotonic \
    pillow \
    psutil \
    requests \
    git+git://github.com/marshallpierce/ultrajson.git@v1.35-gentoo-fixes \
    tornado \
    wsaccel \
    xvfbwrapper \
    brotli \
    'fonttools>=3.44.0,<4.0.0' \
    marionette_driver