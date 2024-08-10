#!/bin/bash

OUTPUT_FILE="/home/waiphoneaung/assignment_script/find_output.txt"

# Find command to search for files in the home directory
# Redirect both stdout and stderr to the output file
find /home/waiphoneaung/ -type f > "$OUTPUT_FILE" 2>&1

echo "Find command output has been saved to $OUTPUT_FILE"

