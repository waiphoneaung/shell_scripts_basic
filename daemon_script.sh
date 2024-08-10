#!/bin/bash

LOG_FILE="/home/waiphoneaung/assignment_script/daemon_log.txt"

# Ensure the log file directory exists
LOG_DIR=$(dirname "$LOG_FILE")
if [ ! -d "$LOG_DIR" ]; then
    mkdir -p "$LOG_DIR"
fi

# Daemon loop
while true
do
    echo "$(date) - Daemon is running" >> "$LOG_FILE"
    sleep 1
done

