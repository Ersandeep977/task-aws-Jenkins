#!/bin/bash

# Read the text file and count word frequencies
words=$(<d.txt tr '[:upper:]' '[:lower:]' | tr -sc '[:alpha:]' '\n' | sort | uniq -c | sort -nr)

# Create a temporary data file for gnuplot
tmp_file=$(mktemp)
echo "$words" | awk '{print NR, $1, $2}' > "$tmp_file"

# Plot the bar chart using gnuplot
gnuplot -persist <<- GNU_PLOT
    set terminal dumb
    set style data histograms
    set xlabel "Words"
    set ylabel "Frequency"
    set title "Word Frequency in Text File"
    plot "$tmp_file" using 2:xtic(3) notitle
GNU_PLOT

# Clean up temporary file
rm "$tmp_file"
