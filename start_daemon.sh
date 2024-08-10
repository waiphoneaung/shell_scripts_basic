#!/bin/bash

DAEMON_SCRIPT="/home/waiphoneaung/assignment_script/daemon_script.sh"

# Start the daemon script in the background
nohup bash "$DAEMON_SCRIPT" &> /dev/null &
DAEMON_PID=$!

echo "Daemon started with PID $DAEMON_PID"

# Exit the execution script
exit 0
