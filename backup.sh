#!/bin/bash

cd ~/docker

echo "------ stopping services" 

cd homegear
# docker compose stop
cd ../homeassistant
# docker compose stop
cd ../node-red
# docker compose stop

cd ~
date=`date '+%FT%H%M%S'`
filename=${date}_ha_backup.tgz
echo "------ backing up '$filename'" 
sudo tar czvpf ${filename} docker

echo "------ restarting services" 
cd docker/homegear
# docker compose start
cd ../homeassistant
# docker compose start
cd ../node-red
# docker compose start
