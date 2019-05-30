#!/bin/bash
# info: backup all users
# options: none
#
# The function for obtaining the list of system users without
# detailed information.


#----------------------------------------------------------#
#                    Variable&Function                     #
#----------------------------------------------------------#

# Includes
source $VESTA/func/main.sh

# SHELL list function
backup_all_users() {
    echo "USER"
    echo "----"
    while read user; do
        echo "$user"
        echo "shell"
    done < <(grep @ /etc/passwd |cut -f 1 -d :)
}



#----------------------------------------------------------#
#                       Action                             #
#----------------------------------------------------------#

backup_all_users;


#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit
