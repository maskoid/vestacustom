# HestiaCP Migration
Maskoid HestiaCP Migration Scripts

## Warning

This is for HestiaCP. Currently in development so things can go ugly. **You have been warned!!**

## Backup Single User

```
wget -N https://raw.githubusercontent.com/maskoid/vestacustom/master/migration/restore-single-user.sh
bash restore-single-user.sh
```

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
