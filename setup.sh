#!/bin/bash
# Centos Server Setup by Maskoid
yum -y update
yum -y install wget
yum -y install nano
cd /etc/yum.repos.d && curl https://raw.githubusercontent.com/maskoid/vestacustom/master/yum.repos.d/MariaDB.repo?token=AstjMgQjG5lqFwlm7pzeTzdiFqnDcO-Gks5cUsXuwA%3D%3D -o MariaDB.repo
cd /etc/yum.repos.d && curl https://raw.githubusercontent.com/maskoid/vestacustom/master/yum.repos.d/nginx.repo?token=AstjMhETIGKTVv0wH8XLMp5na0s0VZD_ks5cUsaMwA%3D%3D -o nginx.repo
cd /etc/yum.repos.d && curl https://raw.githubusercontent.com/maskoid/vestacustom/master/yum.repos.d/vesta.repo?token=AstjMqod2QsNI1sxw56GyexawR0-9qhZks5cUsa8wA%3D%3D -o vesta.repo
wget c.vestacp.com/GPG.txt -O /etc/pki/rpm-gpg/RPM-GPG-KEY-VESTA
cd /root/
yum -y update
yum -y upgrade
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y install yum-utils
yum-config-manager --disable remi-php54
sudo yum-config-manager --enable remi-php73
sudo yum-config-manager --enable remi
yum -y install php-cli php-imap php-process php-pspell php-xml php-xmlrpc php-pdo php-ldap php-pecl-zip php-common php-mcrypt php-mysqlnd php-gmp php-mbstring php-gd php-tidy php-pecl-memcache php-opcache --enablerepo=remi
yum -y install php56-php-cli php56-php-imap php56-php-process php56-php-pspell php56-php-xml php56-php-xmlrpc php56-php-pdo php56-php-ldap php56-php-pecl-zip php56-php-common php56-php-mcrypt php56-php-mysqlnd php56-php-gmp php56-php-mbstring php56-php-gd php56-php-tidy php56-php-pecl-memcache php56-php-opcache --enablerepo=remi
curl https://raw.githubusercontent.com/maskoid/vestacustom/master/vst-install.sh?token=AstjMs8CAvJ8oIzEf5DTJwxU-jdY2PWKks5cUseXwA%3D%3D -o vst-install.sh
