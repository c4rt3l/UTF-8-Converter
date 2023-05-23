#!/bin/bash

# Prompt the user to enter the directory path
echo "Enter the directory path:"
read directory

# Create a "Converted" directory if it doesn't exist
converted_dir="$directory/Converted"
mkdir -p "$converted_dir"

# Iterate over the text files in the directory
for file in "$directory"/*.txt; do
  # Extract the filename without the extension
  filename=$(basename "$file" .txt)

  # Define the path for the converted file
  converted_file="$converted_dir/$filename-converted.txt"

  # Perform the operations on each file and save the converted file
  cat "$file" | sort -u | iconv -f UTF-8 -t UTF-8//IGNORE > "$converted_file"
done
