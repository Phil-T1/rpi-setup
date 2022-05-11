#!/bin/sh

#Call wakeonlan
wakeonlan C8:F7:50:70:0A:78
#wakeonlan 88:D7:F6:9F:66:93

#Notify user
echo "Subject: Computers woken!" |msmtp --debug --from=default -t phil.tegg@gmail.com