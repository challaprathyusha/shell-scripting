#!/bin/bash
FILE=/home/ec2-user/shell-scripting/textfile


#cat $FILE |grep -o 'word'|wc -l
#cat $FILE| uniq
k=$(cat $FILE| tr " " "\n" | sort | uniq)
echo $k 
for i in $k
do
    grep -o $i 



 