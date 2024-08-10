#!/bin/bash

# Check if a file parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file-path>"
    exit 1
fi

FILE="$1"

# Check if the file exists and is readable
if [ ! -f "$FILE" ]; then
    echo "Error: File does not exist: $FILE"
    exit 1
fi

if [ ! -r "$FILE" ]; then
    echo "Error: File is not readable: $FILE"
    exit 1
fi

# Read and display the file content
while IFS= read -r line
do
    echo "$line"
done < "$FILE"

