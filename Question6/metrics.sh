#!/bin/bash

# Convert text to one word per line, lowercase everything
words=$(tr -s ' ' '\n' < input.txt | tr 'A-Z' 'a-z')

# Longest word
longest=$(echo "$words" | awk '{ print length, $0 }' | sort -nr | head -1 | awk '{ print $2 }')

# Shortest word
shortest=$(echo "$words" | awk '{ print length, $0 }' | sort -n | head -1 | awk '{ print $2 }')

# Average word length
avg=$(echo "$words" | awk '{ total += length; count++ } END { print total/count }')

# Unique word count
unique=$(echo "$words" | sort | uniq | wc -l)

echo "Longest word: $longest"
echo "Shortest word: $shortest"
echo "Average word length: $avg"
echo "Total unique words: $unique"
