#!/bin/bash
cols=$(head -1 file | wc -w)
for i in $(seq 1 $cols); do
cut -d ' ' -f$i file | tr '\n' ' ' 
echo
done