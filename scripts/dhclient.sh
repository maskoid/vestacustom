#!/bin/bash
# Solution for "No Internet Connection from VMware"
#
dhclient –v
echo "dhclient enabled. Now add this in auto-startup "
cd /etc/init.d
curl -O https://raw.githubusercontent.com/maskoid/vestacustom/master/scripts/net-autostart
chmod 755 net-autostart
chkconfig --add net-autostart
echo "rebooting in 5 seconds"
sleep 5
reboot
