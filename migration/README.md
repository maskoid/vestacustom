# HestiaCP Migration
Maskoid HestiaCP Migration Scripts

## Warning

This is for HestiaCP. Currently in development so things can go ugly. **You have been warned!!**

## Backup ALL Users

```
wget -N https://raw.githubusercontent.com/maskoid/vestacustom/master/migration/backupallusers.sh
bash backupallusers.sh yes yes
```

## Backup Single User
This shell script only work if you have dropbox backup installer on your server.

```
wget -N https://raw.githubusercontent.com/maskoid/vestacustom/master/migration/restore-single-user.sh
bash restore-single-user.sh
```

## Restore ALL Users
Before Restore make sure dropbox is configure

```
wget -N https://raw.githubusercontent.com/maskoid/vestacustom/master/migration/restoreallusers.sh
bash restoreallusers.sh yes yes
```
