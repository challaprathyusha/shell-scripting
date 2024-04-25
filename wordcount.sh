#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
cat $FILE
k=$(cat $FILE)
echo $k
sort echo $k | uniq
 