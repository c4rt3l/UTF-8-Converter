#!/bin/bash

# Prompt the user to enter the input file name
echo "Enter the input file name:"
read input_file

# Prompt the user to enter the output file name
echo "Enter the output file name:"
read output_file

# Perform the operations on the user-specified input and output files
cat "$input_file" | sort -u | iconv -f UTF-8 -t UTF-8//IGNORE | tee "$output_file"
