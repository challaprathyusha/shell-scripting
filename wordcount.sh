#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
cat $FILE
while read -r word
do
  echo "word:$word"
  grep -o $word $(cat $FILE)|wc -l
 done <<< $(cat $FILE)

 