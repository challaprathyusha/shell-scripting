#!/bin/bash
FILE=$1
while read -r line
do
    for word in $FILE
    do 
        echo $word
        grep -o $word $FILE
        grep -o $word $FILE|wc -l
    done
done <<< $FILE 


 