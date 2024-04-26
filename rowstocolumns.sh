#!/bin/bash
FILE="/home/ec2-user/shell-scripting/txtfile"
s=$(cat $FILE)
echo $s
#k=$(echo $s|tr "\n" " ")
#echo $k