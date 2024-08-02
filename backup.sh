#!/bin/bash
cd ~
date=`date '+%FT%H%M%S'`
filename=${date}_ha_backup.tgz
echo "------ backing up '$filename'" 
sudo tar czvpf ${filename} docker
