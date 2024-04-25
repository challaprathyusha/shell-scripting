#!/bin/bash
FILE=file.txt

while read -r line
do
    for line in $FILE
    do 
        echo $line
    done
done <<< $FILE 


 