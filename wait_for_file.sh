#!/bin/bash

TARGET_FILE="/home/waiphoneaung/assignment_script/wait_for_file.txt"

# Wait until the specified file is created
echo "Waiting for $TARGET_FILE to be created..."
while [ ! -f "$TARGET_FILE" ]; do
    sleep 1
done

echo "$TARGET_FILE has been created."

