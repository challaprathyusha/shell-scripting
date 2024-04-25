#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
#cat $FILE| uniq
cat $FILE
cat $FILE| tr " " "\n" | sort | uniqs
#echo $k | uniq



 