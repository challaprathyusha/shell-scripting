#!/bin/bash
FILE=$1
while read -r line
do
    for line in $FILE
    do 
        echo $line
        
done <<< $FILE 


 