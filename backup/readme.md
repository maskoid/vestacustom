# Setup VestaCP Backup with Dropbox

Create App: https://www.dropbox.com/developers/apps

```
cd /
mkdir dropbox
cd dropbox
curl "https://raw.githubusercontent.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh" -o dropbox_uploader.sh
chmod +x dropbox_uploader.sh
./dropbox_uploader.sh

## To Test Upload
./dropbox_uploader.sh upload "dropbox_uploader.sh" /
```

Script to Upload Backup to Dropbox
```
curl "https://raw.githubusercontent.com/maskoid/vestacustom/master/backup/send_site_backup_files_to_dropbox.sh" -o /usr/local/vesta/bin/send_site_backup_files_to_dropbox.sh

```
Make it executable.
```
chmod 755 /usr/local/vesta/bin/send_site_backup_files_to_dropbox.sh
```




## Credit
https://github.com/andreafabrizi/Dropbox-Uploader
