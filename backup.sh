#!/bin/bash

# make backup on remote
date=`date '+%F'`
filename=${date}_ha_backup.tgz

echo "backing up $filename" 

ssh ts@homeassistant.local "sudo tar czvpf ${filename} docker"
scp ts@homeassistant.local:${filename} .
ssh ts@homeassistant.local "rm ${filename}"

