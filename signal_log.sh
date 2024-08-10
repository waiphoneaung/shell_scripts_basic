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

# Function to log a signal reception
log_signal() {
    echo "$(date) - Received signal: $1" >> "$LOG_FILE"
}

# Trap signals and log them
trap 'log_signal "SIGINT"' SIGINT
trap 'log_signal "SIGTERM"' SIGTERM
trap 'log_signal "SIGHUP"' SIGHUP

# Keep the script running
while true
do
    sleep 1
done

