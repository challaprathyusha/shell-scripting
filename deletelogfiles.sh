#!/bin/bash

SOURCEFOLDER=/tmp/applogfiles

if [ -d $SOURCEFOLDER ]
then 
    echo "the directory $SOURCEFOLDER exist"
else
    echo "Please make sure $SOURCEFOLDER exist"
    exit 1
fi 
cd $SOURCEFOLDER

FILES="$find . -mtime +14 -name *.log "
echo "files that are more than 14 days old:$FILES"