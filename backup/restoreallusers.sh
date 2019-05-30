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
dropbox=${1-shell}
removeall=${2-shell}

# Includes
source $VESTA/func/main.sh

# SHELL list function
restore_all_users() {
    echo "Restoring All Users"
    echo "----"
    while read user; do
        /usr/local/vesta/bin/v-backup-user $user

    done < <(grep @ /etc/passwd |cut -f 1 -d :)
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
