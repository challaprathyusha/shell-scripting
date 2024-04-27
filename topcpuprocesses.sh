#!/bin/bash

# Get the top 5 CPU consuming processes
TOP5=$(ps aux | sort -nrk 3,3 | head -n 5)

# Print the results
echo "The top 5 CPU consuming processes are:"
echo "PID %CPU %MEM COMMAND"
while read line
 do
  pid=$(echo $line | awk '{print $2}')
  cpu=$(echo $line | awk '{print $3}')
  mem=$(echo $line | awk '{print $4}')
  command=$(echo $line | awk '{print $11}')
  echo "$pid $cpu $mem $command"
done <<< $TOP5