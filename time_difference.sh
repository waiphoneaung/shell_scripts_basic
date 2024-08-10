#!/bin/bash

# Get the current date and time
NOW=$(date +%s)

# Get the date and time for yesterday at 00:00
YESTERDAY=$(date -d "yesterday 00:00" +%s)

# Calculate the difference in seconds
DIFFERENCE=$((NOW - YESTERDAY))

# Convert seconds to hours, minutes, and seconds
HOURS=$((DIFFERENCE / 3600))
MINUTES=$(( (DIFFERENCE % 3600) / 60))
SECONDS=$((DIFFERENCE % 60))

echo "Time difference between yesterday 00:00 and now is: ${HOURS}h ${MINUTES}m ${SECONDS}s"

