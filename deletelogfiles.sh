#!/bin/bash

SOURCEFOLDER=/tmp/applogfiles

if [ -d $SOURCEFOLDER ]
then 
    echo "the directory $SOURCEFOLDER exist"
else
    echo "Please make sure $SOURCEFOLDER exist"
    exit 1
fi 

FILES=${find . type -f -name "*.log" -mtime +14}

echo "files that are more than 14 days old:$FILES"