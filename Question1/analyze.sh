#!/bin/bash

# Check argument count
if [ $# -ne 1 ]; then
  echo "Error: Provide exactly one argument"
  exit 1
fi

# Check if path exists
if [ ! -e "$1" ]; then
  echo "Error: Path does not exist"
  exit 1
fi

# If argument is a file
if [ -f "$1" ]; then
  echo "File info for $1:"
  echo "Lines: $(wc -l < "$1")"
  echo "Words: $(wc -w < "$1")"
  echo "Characters: $(wc -m < "$1")"
fi

# If argument is a directory
if [ -d "$1" ]; then
  echo "Directory info for $1:"
  echo "Total files: $(ls -1 "$1" | wc -l)"
  echo ".txt files: $(ls -1 "$1"/*.txt 2>/dev/null | wc -l)"
fi

