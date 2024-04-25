#!/bin/bash

FILESYSTEM=$(df -hT|grep xfs)
DISKTHRESHOLD=10

while read -r line
do
DISKUSAGE=$FILESYSTEM|awk -F " " '{print$6F}'|cut -d "%" -f1
FOLDER=$FILESYSTEM|awk -F " " '{print$NF}'
if [ $DISKUSAGE -ge $DISKTHRESHOLD ]
then    
    echo "$FOLDER is $DISKUSAGE, which is greater then $DISKTHRESHOLD"
done <<< $FILESYSTEM