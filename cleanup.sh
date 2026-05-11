#!/bin/bash

DIR="/var/lib"
THRESHOLD=70

# Get disk usage percentage of filesystem containing DIR
USAGE=$(df -h "$DIR" | awk 'NR==2 {gsub("%",""); print $5}')

# Delete files older than 30 days if usage exceeds threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage is ${USAGE}%. Cleaning old files..."

    find "$DIR" -type f -mtime +30 -delete

    echo "Cleanup completed."
else
    echo "Disk usage is under control: ${USAGE}%"
fi

exit 0