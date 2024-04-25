#!/bin/bash

FILESYSTEM=$(df -hT|grep xfs)
DISKTHRESHOLD=10

while read -r line
do
DISKUSAGE=$(echo "$line"|awk -F " " '{print$6F}'|cut -d "%" -f1)
FOLDER=$(echo "$line"|awk -F " " '{print$NF}')
if [ $DISKUSAGE -ge $DISKTHRESHOLD ]
then    
   MESSAGE+="$FOLDER is $DISKUSAGE, which is greater then $DISKTHRESHOLD \n"
fi
done <<< $FILESYSTEM

echo -e  "message:$MESSAGE"