#!/bin/bash
# info: restore all users
# options: [ remove dropbox]
#
# The function for obtaining the list of system users without
# detailed information.


#----------------------------------------------------------#
#                    Variable&Function                     #
#----------------------------------------------------------#

# Argument definition
## Download All Backup Files from Dropbox if Configured
dropbox=${1-shell}
## Remove Everthing From Backup Folder
removeall=${2-shell}

# Restore All User
restore_all_users() {
    echo "Restoring All Users"
    echo "----"
    cd /backup/
    rename .tar "" *.tar

    for file in /backup/*; do
        user="$(basename "$file")"
        bkfilename=$user".2019-04-24_05-20-47.tar"
        mv /backup/$user /backup/$bkfilename
        /usr/local/hestia/bin/v-restore-user $user $bkfilename

    done

}



#----------------------------------------------------------#
#                       Action                             #
#----------------------------------------------------------#

if [ "$removeall" = "yes" ]; then
        rm -rf /backup/*
fi

if [ "$dropbox" = "yes" ]; then
        /dropbox/dropbox_uploader.sh download / /backup/
fi

restore_all_users;


#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit
