#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
#cat $FILE| uniq
cat $FILE| tr " " "\n" | sort | uniq
#k=$(cat $FILE)
#echo $k | uniq

 