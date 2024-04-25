#!/bin/bash
FILE=file.txt

#cat $FILE |grep -o 'word'|wc -l


while read -r word
do
  echo $word
done < cat $FILE




 