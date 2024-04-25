#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
#cat $FILE| uniq
#cat $FILE
UNIQ=cat $FILE| tr " " "\n" | sort | uniq
#echo $k | uniq
while read -r word
do  
    occurence=grep -o $word $FILE|wc -l
    echo "$word:$occurence"
done <<<  $UNIQ    



 