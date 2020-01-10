#!/bin/bash

cd ~

cat wptserver-install/configs/sysctl.conf | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
cat wptserver-install/configs/fstab | sudo tee -a /etc/fstab
sudo mount -a
cat wptserver-install/configs/security/limits.conf | sudo tee -a /etc/security/limits.conf
cat wptserver-install/configs/default/beanstalkd | sudo tee /etc/default/beanstalkd
sudo service beanstalkd restart
