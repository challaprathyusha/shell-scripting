#!/bin/bash

FILE="/home/ec2-user/shell-scripting/textfile"

# Read the content of the file into a variable
content=$(cat "$FILE")

# Print the entire content of the file
echo "$content"

# Split the content into words, sort them, and get unique words
unique_words=$(echo "$content" | tr -s ' ' '\n' | sort | uniq)

# Loop through each unique word and count its occurrences
for word in $unique_words
do
    occurrence=$(echo "$content" | grep -o "\<$word\>" | wc -l)
    echo "$word: $occurrence"
done

