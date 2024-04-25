#!/bin/bash
FILE=/home/ec2-user/shell-scripting/file.txt

while read -r line
do
    for line in $FILE
    do 
        echo $line
    done
done <<< $FILE 


 