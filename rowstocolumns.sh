#!/bin/bash
FILE="/home/ec2-user/shell-scripting/txtfile"

s=$(cat $FILE)
#k=$(cat $FILE|tr -s '[:blank:]' '\n')

#echo $s|awk -F "
while read -r line
do
    echo $line
    echo $line|tr -s '[:blank:]' '\n'
done <<< $s

