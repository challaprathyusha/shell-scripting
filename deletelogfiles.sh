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
FILES="$(find . -name "*.log" -mtime +14)"
echo "files that are more than 14 days old:$FILES"

while IFS=read -r line;
do 
echo $line
rm -rf $line
done < $FILES