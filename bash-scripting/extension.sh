#!/bin/bash

# renaming all .txt files .bak
for this file in *.txt; do
mv "$file" "$(file%.txt).bak"
done 

: '
Explanation:
- looping through all .txt files in the current directory.
- using the mv command to rename each .txt to .bak
- The $(file%.txt).bak id the syntax that removes the .txt extension and appends .bak 
'
