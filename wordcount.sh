#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
#cat $FILE| uniq
k=$(cat $FILE)
VARIABLE=$(echo $k| tr " " "\n" | sort | uniqs)
#echo $k | uniq



 