#!/bin/bash

TARGET_FILE="/home/waiphoneaung/assignment_script/logfile.log"
SEARCH_STRING="message"
REPLACE_STRING="Here is updated"
TEMP_FILE="/home/waiphoneaung/assignment_script/13rename.txt"

# Replace the string in the file
if [ -f "$TARGET_FILE" ]; then
    sed "s/$SEARCH_STRING/$REPLACE_STRING/g" "$TARGET_FILE" > "$TEMP_FILE"
    mv "$TEMP_FILE" "$TARGET_FILE"
    echo "Replaced all occurrences of '$SEARCH_STRING' with '$REPLACE_STRING' in $TARGET_FILE"
else
    echo "File $TARGET_FILE does not exist."
    exit 1
fi

