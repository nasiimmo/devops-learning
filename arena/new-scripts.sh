#!/bin/bash


# Create a directory called Arena_Boss to store generated files
mkdir Arena_Boss

# Loop 5 times to create 5 text files
for i in {1..5}
do
    # Define the filename using the loop counter
    FILE="Arena_Boss/file$i.txt"

    # Generate a random number of lines between 10 and 20
    # RANDOM % 11 gives 0–10, +10 ensures at least 10 lines
    LINES=$((RANDOM % 11 + 10))

    # Inner loop to write lines into the file
    for j in $(seq 1 $LINES)
    do
        # Append a line of text to the file
        echo "This is line $j" >> "$FILE"
    done
done

# Display a heading before showing sorted files
echo "Files sorted by size:"

# Find all files in Arena_Boss
# -exec ls -lh lists file details with human-readable sizes
# sort -k 5,5 -h sorts files by size (smallest to largest)
find Arena_Boss -type f -exec ls -lh {} + | sort -k 5,5 -h

# Create the Victory_Archive directory if it does not already exist
mkdir -p Victory_Archive

# Loop through all .txt files in Arena_Boss
for FILE in Arena_Boss/*.txt
do
    # Check if the file contains the word "Victory"
    # -q runs grep quietly (no output, just exit status)
    if grep -q "Victory" "$FILE"; then

        # Move files containing "Victory" to Victory_Archive
        mv "$FILE" Victory_Archive/

        # Confirm the file was moved
        echo "$FILE contains 'Victory' and has been moved to Victory_Archive."
    fi
done





# # Store the directory to monitor in a variable
# DIRECTORY="Arena"

# # Store the log file name where changes will be recorded
# LOG_FILE="change_log.txt"

# # Check if the directory does NOT exist
# # -d checks for a directory
# # '!' negates the condition
# if [ ! -d "$DIRECTORY" ]; then
#     echo "Directory does not exist."
#     exit 1
# fi

# # Monitor the directory recursively for file system changes
# # fswatch continuously watches for file events
# # -r enables recursive monitoring
# fswatch -r "$DIRECTORY" | while read event; do

#     # Check if the file exists
#     # -e checks if a file or directory exists
#     if [ -e "$event" ]; then

#         # Log the date, time, and file creation/modification event
#         # date formats the timestamp
#         # >> appends output to the log file
#         echo "$(date +'%Y-%m-%d %H:%M:%S') File modified/created: $event" >> "$LOG_FILE"

#     else
#         # Log the date, time, and file deletion event
#         echo "$(date +'%Y-%m-%d %H:%M:%S') File deleted: $event" >> "$LOG_FILE"
#     fi
# done




# # Store the directory to search in a variable
# DIRECTORY="Arena"

# # Store the word or phrase to search for
# SEARCH_TERM="Error"

# # Check if the specified directory does NOT exist
# # -d checks for a directory
# # '!' negates the condition
# if [ ! -d "$DIRECTORY" ]; then
#     echo "Directory does not exist."
#     exit 1
# fi

# # Search through all .log files in the directory
# # grep searches for text patterns
# # -l prints only the names of files that contain the search term
# # "$DIRECTORY"/*.log targets all log files in the directory
# grep -l "$SEARCH_TERM" "$DIRECTORY"/*.log



# # Store the directory name in a variable
# DIRECTORY="Arena"

# # Check if the directory does NOT exist
# # -d checks for a directory
# # '!' negates the condition
# if [ ! -d "$DIRECTORY" ]; then
#     echo "Directory does not exist."
#     exit 1
# fi

# # Find all .txt files inside the directory
# # -type f ensures only files are processed
# # -name "*.txt" matches text files
# # -exec ls -lh {} + lists files in long format with human-readable sizes
# # sort -k 5,5 -h sorts the output by file size (column 5), smallest to largest
# # awk prints only the file size and filename columns
# find "$DIRECTORY" -type f -name "*.txt" -exec ls -lh {} + \
# | sort -k 5,5 -h \
# | awk '{ print $5, $9 }'




# # Check if no argument was provided to the script
# # -z checks if the variable is empty
# # $1 represents the first argument passed to the script
# if [ -z "$1" ]; then
#     echo "No file provided"
#     exit 1
# fi

# # Check if the provided argument is NOT a file
# # '!' negates the test
# # -f checks if the file exists and is a regular file
# if [ ! -f "$1" ]; then
#     echo "File not found!"
#     exit 1
# fi

# # Count the number of lines in the file
# # wc -l counts lines
# # < redirects the file contents into wc
# LINE_COUNT=$(wc -l < "$1")

# # Display the filename and its line count
# echo "The file '$1' has $LINE_COUNT lines."





# # Create a directory called Battlefield
# mkdir Battlefield

# # Create three text files inside the Battlefield directory
# touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

# # Check if the file knight.txt exists in the Battlefield directory
# if [ -f "Battlefield/knight.txt" ]; then

#   # Create the Archive directory if it does not already exist
#   mkdir -p Archive

#   # Move knight.txt from Battlefield to Archive
#   mv Battlefield/knight.txt Archive/

#   # Confirm that the file was moved
#   echo "knight.txt has been moved to Archive."

# # If knight.txt does not exist, display an error message
# else
#   echo "knight.txt not found."
# fi

# # Display the contents of the Battlefield directory
# echo "Contents of Battlefield:"
# ls Battlefield

# # Display the contents of the Archive directory
# echo "Contents of Archive:"
# ls Archive


# # Create the Backup directory
# # -p ensures no error if the directory already exists
# mkdir -p Backup

# # Copy all .txt files from the arena directory into Backup
# # *.txt matches every text file
# # Backup/ is the destination directory
# cp arena/*.txt Backup/



# if [ -f "arena/hero.txt" ]; then #  Checks if the file hero.txt exists.
#   echo "Hero found!"
# else 
#   echo "Hero missing!"
# fi




# # Create a script that outputs the numbers 1 to 10, one number per line.
# for i in {1..10}
# do
#   echo $i
# done

