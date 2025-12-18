#!/bin/bash

# Prompt the user to enter a filename
echo "Enter Filename to check:"

# Read user input and store it in the variable 'filename'
read filename

# Check if the file exists and is a regular file
if [ -f "$filename" ]; then
  echo "$filename exists"    # Print message if file exists
else 
  echo "$filename Does not exist"   # Print message if file does not exist
fi

# Check if the file is readable
if [ -r "$filename" ]; then
  echo "File is readable ✓"       # File can be read
else
  echo "File is not readable ✗"   # File cannot be read
fi

# Check if the file is executable
if [ -x "$filename" ]; then
  echo "File is executable ✓"     # File can be executed
else
  echo "File is not executable ✗" # File cannot be executed
fi

# Check if the file is writable
if [ -w "$filename" ]; then
  echo "File is writable ✓"       # File can be written to
else
  echo "File is not writable ✗"   # File cannot be written to
fi
