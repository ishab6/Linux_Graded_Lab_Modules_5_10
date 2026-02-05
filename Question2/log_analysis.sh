#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 logfile"
  exit 1
fi

logfile="$1"

if [ ! -r "$logfile" ]; then
  echo "Error: File not readable or does not exist"
  exit 1
fi

total=$(wc -l < "$logfile")
info=$(grep -c "INFO" "$logfile")
warning=$(grep -c "WARNING" "$logfile")
error=$(grep -c "ERROR" "$logfile")
recent_error=$(grep "ERROR" "$logfile" | tail -1)

echo "Total entries: $total"
echo "INFO: $info"
echo "WARNING: $warning"
echo "ERROR: $error"
echo "Most recent ERROR: $recent_error"

report="logsummary_$(date +%F).txt"
{
  echo "Log Summary Report - $(date)"
  echo "Total entries: $total"
  echo "INFO: $info"
  echo "WARNING: $warning"
  echo "ERROR: $error"
  echo "Most recent ERROR: $recent_error"
} > "$report"

echo "Report saved to $report"
