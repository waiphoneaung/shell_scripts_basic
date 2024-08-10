#!/bin/bash

# Check if both input and output file parameters are provided
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <input-file-path> <output-file-path>"
    exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="$2"

# Check if the input file exists and is readable
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file does not exist: $INPUT_FILE"
    exit 1
fi

if [ ! -r "$INPUT_FILE" ]; then
    echo "Error: Input file is not readable: $INPUT_FILE"
    exit 1
fi

# Read the input file and write to the output file
while IFS= read -r line
do
    echo "$line" >> "$OUTPUT_FILE"
done < "$INPUT_FILE"

echo "Content from $INPUT_FILE has been written to $OUTPUT_FILE"

