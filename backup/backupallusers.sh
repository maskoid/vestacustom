#!/bin/bash
# info: backup all users
# options: none
#
# The function for obtaining the list of system users without
# detailed information.


#----------------------------------------------------------#
#                    Variable&Function                     #
#----------------------------------------------------------#

# Argument definition
format=${1-shell}

# Includes
source $VESTA/func/main.sh

# SHELL list function
shell_list() {
    echo "USER"
    echo "----"
    while read user; do
        echo "$user"
        echo "shell"
    done < <(grep @ /etc/passwd |cut -f 1 -d :)
}

# PLAIN list function
plain_list() {
    while read user; do
        echo "$user"
        echo "plain" 
    done < <(grep @ /etc/passwd |cut -f 1 -d :)
}


#----------------------------------------------------------#
#                       Action                             #
#----------------------------------------------------------#

# Listing data
case $format in
    json)   json_list ;;
    plain)  plain_list ;;
    csv)    csv_list ;;
    shell)  shell_list ;;
esac


#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit
