#!/bin/bash
FILE="/home/ec2-user/shell-scripting/txtfile"

s=$(cat $FILE)
#k=$(cat $FILE|tr -s '[:blank:]' '\n')
while read -r line
do
    #echo $line
    echo $line|tr -s '[:blank:]' '\n'
    echo $line|tr -s '[:blank:]' '\n'|head -n 6||echo $line|tr -s '[:blank:]' '\n'|tail -n 6
done <<< $s
#echo $line|tr -s '[:blank:]' '\n'|head -n 6||echo $line|tr -s '[:blank:]' '\n'|tail -n 6


