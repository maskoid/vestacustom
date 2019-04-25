# vestacustom
Maskoid Customization of VestaCP

## Warning

This is for Centos 7. Don't try it if you don't know what it does. Currently in development so things can go ugly. **You have been warned!!**

## What is does?

This will install:

* Latest Apache (2.4.39)
* Latest nginx
* Latest Mariabd (10.3)
* Latest PHP 7.3
* It will use remi repo for other applications.

## Install Steps

```
curl -O https://raw.githubusercontent.com/maskoid/vestacustom/master/vst-install.sh
bash vst-install.sh --nginx yes --apache yes --phpfpm no --named yes --remi yes --vsftpd no --proftpd no --iptables yes --fail2ban yes --quota no --exim yes --dovecot yes --spamassassin yes --clamav yes --softaculous no --mysql yes --postgresql no --hostname servername --email youremail@gmail.com --password yourpass 

```

Credit:
https://github.com/serghey-rodin/vesta

