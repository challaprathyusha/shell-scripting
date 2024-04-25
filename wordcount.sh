#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
#cat $FILE| uniq
s=$(cat $FILE)
echo $s
k=$(echo $s| tr " " "\n" | sort | uniq)
echo $k
for i in echo $k 
do
    grep -o '$i' 'echo $s' |wc -l
done



 