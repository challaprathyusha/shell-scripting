#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
#cat $FILE| uniq
#cat $FILE
k=$(cat $FILE| tr " " "\n" | sort | uniq)
echo $k 
while read -r word
do
    grep -o $word 'cat $FILE'|wc -l
    echo "$word:grep -o $word 'cat $FILE'|wc -l"
done <<<  'cat $FILE| tr " " "\n" | sort | uniq'



 