#!/bin/bash

SOURCEFOLDER=/tmp/applogfiles
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCEFOLDER ]
then 
    echo -e "$G the directory $SOURCEFOLDER exist $N"
else
    echo -e "$R Please make sure $SOURCEFOLDER exist $N"
    exit 1
fi 

cd $SOURCEFOLDER
FILES="$(find . -name "*.log" -mtime +14)"
echo "files that are more than 14 days old:$FILES"

while read -r line
do 
echo "Delete file:$line"
rm -rf $line
done < $FILES