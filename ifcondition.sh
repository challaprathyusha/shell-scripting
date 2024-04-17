#!/bin/bash
number=$1

if [ $number -ne 10 ]
then 
    echo "given $number is not equal to 10"
else
    echo "given $number is equals to 10"
fi