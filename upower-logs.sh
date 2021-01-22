#!/bin/bash

# Get start time
STIME=`date "+%d-%b-%Y-%m"`

while true; do
  DATE=`date`
  UPOWER=`upower -d | grep percentage | head -n 1`
  echo "${DATE} ${UPOWER}" >> "/home/gff/battery${STIME}.log"
  sleep 300
  sync;
done
