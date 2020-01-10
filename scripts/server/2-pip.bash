#!/bin/bash

cd ~

until sudo pip install --upgrade pip
do
    sleep 1
done

until sudo pip install monotonic pillow psutil requests ujson pyssim
do
    sleep 1
done
