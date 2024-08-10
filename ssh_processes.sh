#!/bin/bash

OUTPUT_FILE="/home/waiphoneaung/assignment_script/ssh_processes.txt"

# List SSH processes and redirect the output to the file
ps aux | grep '[s]sh' > "$OUTPUT_FILE"

echo "SSH processes have been saved to $OUTPUT_FILE"

