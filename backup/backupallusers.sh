#!/bin/bash
# info: backup all users
# options: [dropbox]
#
# The function for obtaining the list of system users without
# detailed information.


#----------------------------------------------------------#
#                    Variable&Function                     #
#----------------------------------------------------------#

# Argument definition
dropbox=${1-shell}

# Includes
source $VESTA/func/main.sh

# SHELL list function
backup_all_users() {
    echo "USER"
    echo "----"
    while read user; do
        echo "$user"
        
    done < <(grep @ /etc/passwd |cut -f 1 -d :)
}



#----------------------------------------------------------#
#                       Action                             #
#----------------------------------------------------------#

backup_all_users;
if [ $dropbox = "yes" ]
    echo "yes"
fi

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit
