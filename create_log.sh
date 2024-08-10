#!/bin/bash

# Check if directory exists, if not create it
LOG_DIR="/home/waiphoneaung/assignment_script"
LOG_FILE="$LOG_DIR/logfile.log"

if [ ! -d "$LOG_DIR" ]; then
    mkdir -p "$LOG_DIR"
fi

log_info() {
    if [ -d "$LOG_DIR" ]; then
        echo "$(date) - $1" >> "$LOG_FILE"
    else
        echo "Error: Log directory does not exist."
        exit 1
    fi
}

log_info "This is a log message"

