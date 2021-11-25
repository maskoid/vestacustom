# Setup HestiaCP Backup with Dropbox

Create App: https://www.dropbox.com/developers/apps and get Access Token

```
# To Install
curl "https://raw.githubusercontent.com/maskoid/vestacustom/master/backup/backup.sh" -o backup.sh
bash backup.sh


# Provide Access Token
/dropbox/dropbox_uploader.sh
Enter your access Token & follow the step

# To Test Upload 
/dropbox/dropbox_uploader.sh upload "backup.sh" /
```

Create Cron Job to run everyday 

```
sudo /usr/local/hestia/bin/send_site_backup_files_to_dropbox.sh
```

## Credit
https://github.com/andreafabrizi/Dropbox-Uploader
