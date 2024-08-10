#!/bin/bash

LOG_FILE="/home/waiphoneaung/assignment_script/daemon_log.txt"
LOCK_FILE="/home/waiphoneaung/assignment_script/daemon.lock"
# Function for the daemon
daemon_function() {
    while true; do
        echo "$(date) - Daemon is running" >> "$LOG_FILE"
        sleep 1
    done
}

# Using flock for exclusive control
(
    flock -n 200 || { echo "Daemon is already running or another instance is using the lock. Exiting."; exit 1; }

    # Start the daemon function
    daemon_function
) 200>"$LOCK_FILE"

