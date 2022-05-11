#!/bin/sh

#Notify user of reboot
echo "Subject: Raspberry Pi rebooted!" |msmtp --debug --from=default -t phil.tegg@gmail.com
