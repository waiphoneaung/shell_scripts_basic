#!/bin/bash

# Check if a log file parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <log-file-path>"
    exit 1
fi

LOG_FILE="$1"

# Check if the log file directory exists
LOG_DIR=$(dirname "$LOG_FILE")
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Log file directory does not exist: $LOG_DIR"
    exit 1
fi

# Write the date to the log file every 1 second
while true
do
    echo "$(date)" >> "$LOG_FILE"
    sleep 1
done

