#!/bin/bash
DATE=$(date +"%Y-%m-%d")
#Loop through each file in the backup folder whose name has the current date
for X in /backup/*$DATE*; do
    #X is the filename with path. Remove path to get just the filename.
    NAME_NO_PATH=${X##*/}
    #Remove the date from the name (removes all text between the periods)
    NEW_NAME="${NAME_NO_PATH%%.*}.${NAME_NO_PATH##*.}"
    #Copy the file to tmp with the new non-dated name
    cp $X /tmp/$NEW_NAME
    #Send it to Dropbox
    /dropbox/dropbox_uploader.sh -f /root/.dropbox_uploader upl" "/tmp/$NEW_NAME" /
    #Delete the file from tmp
    rm -rf /tmp/$NEW_NAME
done
