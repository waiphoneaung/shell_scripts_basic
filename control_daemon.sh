#!/bin/bash

DAEMON_SCRIPT="/home/waiphoneaung/assignment_script/daemon_script.sh"
LOCK_FILE="/home/waiphoneaung/assignment_script/daemon.lock"

start_daemon() {
    # Check if the daemon is already running
    if [ -f "$LOCK_FILE" ]; then
        echo "Daemon is already running"
        exit 1
    fi
    
    # Start the daemon script in the background
    nohup bash "$DAEMON_SCRIPT" &> /dev/null &
    DAEMON_PID=$!
    
    # Create a lock file with the daemon PID
    echo "$DAEMON_PID" > "$LOCK_FILE"
    
    echo "Daemon started with PID $DAEMON_PID"
}

stop_daemon() {
    # Check if the lock file exists
    if [ ! -f "$LOCK_FILE" ]; then
        echo "Daemon is not running"
        exit 1
    fi
    
    # Read the PID from the lock file
    DAEMON_PID=$(cat "$LOCK_FILE")
    
    # Stop the daemon
    kill "$DAEMON_PID"
    rm "$LOCK_FILE"
    
    echo "Daemon stopped"
}

case "$1" in
    start)
        start_daemon
        ;;
    stop)
        stop_daemon
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

