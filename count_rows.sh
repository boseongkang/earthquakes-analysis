#!/bin/bash

# Check if the file name is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <csv_file>"
    exit 1
fi

# Input file (CSV)
CSV_FILE="$1"

# Check if the file exists
if [ ! -f "$CSV_FILE" ]; then
    echo "Error: File '$CSV_FILE' not found."
    exit 1
fi

# Count the number of rows excluding the header
ROW_COUNT=$(awk 'END {print NR-1}' "$CSV_FILE")

# Output the number of rows
echo "Number of rows (excluding header): $ROW_COUNT"