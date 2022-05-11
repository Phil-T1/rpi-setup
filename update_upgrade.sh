#!/bin/sh

#Update and upgrade
sudo apt-get update
sudo apt -y full-upgrade
sudo apt clean

#Notify user
echo "Subject: Raspberry Pi successfully updated!" |msmtp --debug --from=default -t phil.tegg@gmail.com
