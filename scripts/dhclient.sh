#!/bin/bash
# Solution for "No Internet Connection from VMware"
#
cd /etc/init.d
curl -O https://raw.githubusercontent.com/maskoid/vestacustom/master/scripts/net-autostart
chmod 755 net-autostart
chkconfig --add net-autostart
echo "rebooting in 5 seconds"
sleep 5
reboot
