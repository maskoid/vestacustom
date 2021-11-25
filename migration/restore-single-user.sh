# This shell script only work if you have dropbox backup installer on your server. 
#!/bin/bash 

cd /backup/

read -p " Username : " username
bash /dropbox/dropbox_uploader.sh download "$username".tar

for file in *.tar
do
  mv "$file" "${file/.tar/.2020-05-11_05-16-21.tar}"
done

bash /usr/local/hestia/bin/v-restore-user $username "$username".2020-05-11_05-16-21.tar

exit
