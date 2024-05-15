#!/bin/bash

file_path="${1:-data.txt}"

if [ ! -f "$file_path" ]; then
    echo "File '$file_path' not found."
    exit 1
fi

# Read file, convert to lowercase, and count occurrences of each word
word_counts=$(tr -s '[:space:]' '\n' < "$file_path" | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr)

echo "$word_counts"
