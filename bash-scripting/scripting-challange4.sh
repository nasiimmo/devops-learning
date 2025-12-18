#!/bin/bash

echo "Enter source directory"
read source_dir

# Get the current date and time in the format YYYY-MM-DD_HH-MM
timestamp=$(date +%Y-%m-%d_%H-%M)

# Create a backup directory name using the timestamp
backup_dir="backup_$timestamp"

# Check if the backup directory does NOT exist
if [ ! -d "$backup_dir" ]; then
  mkdir "$backup_dir"
  echo "Backup directory created: $backup_dir"
fi


# Inform the user that copying is starting
echo "Copying .txt files..."

# Copy all .txt files from the source directory to the backup directory
cp "$source_dir"/*.txt "$backup_dir"

# Count the number of .txt files in the backup directory
file_count=$(ls "$backup_dir"/*.txt 2>/dev/null | wc -l)

echo "Backup complete! Files backed up: $file_count"
