#!/bin/bash

###
# Create a log file of times and battery percenage left.
#
# To run symlink the `upower-logs.sh` file to `/usr/local/bin/upl`
# `ln -s PATH/TO/upower-logs.sh /usr/local/bin/upl`
# 
# Then you can run it by just typing `upl` at the command prompt.
###

# Get start time
STIME=`date "+%d-%b-%Y-%m"`

echo "\tWriting logs to ${HOME}/battery${STIME}.log\n\n"
while true; do
  DATE=`date`
  UPOWER=`upower -d | grep percentage | head -n 1`
  echo "${DATE} ${UPOWER}"
  echo "${DATE} ${UPOWER}" >> "${HOME}/battery${STIME}.log"
  sleep 300
  sync;
done
