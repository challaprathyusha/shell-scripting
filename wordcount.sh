#!/bin/bash
FILE=$1

 for word in $FILE
 do 
    echo $word
    grep -o $word $FILE
    grep -o $word $FILE|wc -l
done


