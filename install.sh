#!/bin/sh

# Directory for log files from lighttpd
LOG_FOLDER=tmp
if [ ! -e $LOG_FOLDER ]; then
    mkdir $LOG_FOLDER
fi

# Export env variables to be able to run notify-send
env > www/cgi-bin/allVarsForUserTest
