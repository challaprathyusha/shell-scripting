#!/bin/bash
FILE="/home/ec2-user/shell-scripting/textfile"

#cat $FILE |grep -o 'word'|wc -l
s=$(cat $FILE)
echo $S
k=$(echo $s| tr " " "\n" | sort | uniq)
echo $k
for word in $k
do
    occurence=$(echo $s|grep -o "$word" |wc -l)
    echo "$word:$occurence"
    echo "$word:$occurence"|awk -F ":" '{print$2F}'| sort"
done

#echo "$word:$occurence"|awk -F ":" '{print$2F}'


