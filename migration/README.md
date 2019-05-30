# VestaCP Migration
Maskoid VestaCP Migration Scripts

## Warning

This is for Centos 7. Don't try it if you don't know what it does. Currently in development so things can go ugly. **You have been warned!!**


## Backup ALL Users

```
wget -N https://raw.githubusercontent.com/maskoid/vestacustom/master/migration/backupallusers.sh
bash backupallusers.sh yes yes
```

## Restore ALL Users
Before Restore make sure dropbox is configure

```
wget -N https://raw.githubusercontent.com/maskoid/vestacustom/master/migration/restoreallusers.sh
bash restoreallusers.sh yes yes
```
