#!/bin/bash
FILE="/home/ec2-user/shell-scripting/txtfile"
cat $FILE
k=$(cat $FILE|tr -s '[:blank:]' '\n')
echo $k
#echo $s|awk -F "