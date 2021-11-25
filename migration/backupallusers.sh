#!/bin/bash
# info: backup all users
# options: [ remove dropbox]
#
# The function for obtaining the list of system users without
# detailed information.


#----------------------------------------------------------#
#                    Variable&Function                     #
#----------------------------------------------------------#

# Argument definition
## Upload All Backup to Dropbox
dropbox=${1-shell}
## Remove all Exisiting Backups
removeall=${2-shell}

# Includes
source $HESTIA/func/main.sh

# Backup All Users function
backup_all_users() {
    echo "Backing Up All Users"
    echo "----"
    while read user; do
        /usr/local/hestia/bin/v-backup-user $user

    done < <(grep @ /etc/passwd |cut -f 1 -d :)
}



#----------------------------------------------------------#
#                       Action                             #
#----------------------------------------------------------#

if [ "$removeall" = "yes" ]; then
        rm -rf /backup/* 
fi

backup_all_users;

if [ "$dropbox" = "yes" ]; then
        sudo /usr/local/hestia/bin/send_site_backup_files_to_dropbox.sh
fi

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit
