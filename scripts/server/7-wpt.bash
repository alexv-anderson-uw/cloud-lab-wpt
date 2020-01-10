#!/bin/bash

cd ~

LOCATIONKEY=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
SERVERKEY=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
SERVERSECRET=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
APIKEY=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

cat wptserver-install/webpagetest/settings.ini | sed "s/%LOCATIONKEY%/$LOCATIONKEY/" | tee /var/www/webpagetest/www/settings/settings.ini
cat wptserver-install/webpagetest/keys.ini | sed "s/%SERVERSECRET%/$SERVERSECRET/" | sed "s/%SERVERKEY%/$SERVERKEY/" | sed "s/%APIKEY%/$APIKEY/" | tee /var/www/webpagetest/www/settings/keys.ini
cat wptserver-install/webpagetest/locations.ini | tee /var/www/webpagetest/www/settings/locations.ini
cp /var/www/webpagetest/www/settings/connectivity.ini.sample /var/www/webpagetest/www/settings/connectivity.ini

# Crontab to tickle the WebPageTest cron jobs every 5 minutes
CRON_ENTRY="*/5 * * * * curl --silent http://127.0.0.1/work/getwork.php"
( crontab -l | grep -v -F "$CRON_ENTRY" ; echo "$CRON_ENTRY" ) | crontab -

clear
echo 'Setup is complete. System reboot is recommended.'
echo 'The locations need to be configured manually in /var/www/webpagetest/www/settings/locations.ini'
echo 'The settings can be tweaked in /var/www/webpagetest/www/settings/settings.ini'
printf "\n"
echo "The location key to use when configuring agents is: $LOCATIONKEY"
echo "An API key to use for automated testing is: $APIKEY"
