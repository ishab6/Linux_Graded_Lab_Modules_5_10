#!/bin/bash

# Check if directory argument is provided
if [ $# -ne 1 ]; then
    echo "Error: Please provide a directory path"
    exit 1
fi

DIR=$1

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist"
    exit 1
fi

# Create backup directory if not exists
mkdir -p "$DIR/backup"

echo "Parent Process ID: $$"
echo "Moving files to backup in background..."

for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        mv "$file" "$DIR/backup/" &
        echo "Moved $(basename "$file") with PID $!"
    fi
done

# Wait for all background processes to finish
wait

echo "All background move operations completed."
