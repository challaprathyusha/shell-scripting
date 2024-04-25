#!/bin/bash
FILE=/home/ec2-user/shell-scripting/file.txt

#cat $FILE |grep -o 'word'|wc -l


while read -r word
do
  echo $word
done < cat $FILE




 