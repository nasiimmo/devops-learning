#!/bin/bash

# Print a message indicating that the directory and file have been created
echo "Directory 'bash_demo' created. File 'demo.txt' created."

# Write text including the current date into demo.txt
# '> demo.txt' creates the file or overwrites it if it already exists
echo "This file was created by a Bash script on $(date +%Y-%m-%d)" > demo.txt

# Print a message indicating that the script will display the file contents
echo "File contents:"

# Display the actual contents of demo.txt
cat demo.txt
