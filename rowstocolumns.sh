#!/bin/bash
FILE="/home/ec2-user/shell-scripting/txtfile"
cat $FILE
echo $s
k=$(echo $s|tr -s '[:blank:]' '\n')
echo $k
#echo $s|awk -F "