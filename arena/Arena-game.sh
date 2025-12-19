#!/bin/bash 

echo "Choose an option"
echo "1. Check diskspace"
echo "2. Show system uptime"
echo "3. Backup the Arena directory and keep the last 3 backups"
echo "4. Parse a configuration file settings.conf and display the values"

read -rp "Enter your choice [1-4]: " choice

case $choice in

  1) df -h ;;

  2) uptime ;;

  3) SOURCE_DIR="Arena"
        BACKUP_DIR="Backups"

        mkdir -p "$BACKUP_DIR"

        TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
        BACKUP_NAME="backup_$TIMESTAMP.tar.gz"
        tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
        echo "Created backup: $BACKUP_NAME"

        cd "$BACKUP_DIR" || exit
        ls -t | sed -e '1,5d' | while IFS= read -r file; do
            rm -f "$file"
        done
        ;;

  4) CONFIG_FILE="settings.conf" 
  if [ ! -f "$CONFIG_FILE" ]; then 
  echo "Configuration file does not exist." 
  exit 1 
  fi 

  while IFS='=' read -r key value; do 

  echo "Key: $key, Value: $value"

  done < "$CONFIG_FILE"
        ;;

  *)
  echo "Invalid option" ;;
esac


# # Display a menu of options to the user
# echo "Choose an option:"
# echo "1. Check disk space"
# echo "2. Show system uptime"
# echo "3. List users"

# # Prompt the user for input
# # -r prevents backslash escaping
# # -p displays the prompt text
# read -rp "Enter your choice [1-3]: " choice

# # Use a case statement to handle different user choices
# case $choice in

#     # Option 1: Display disk usage in human-readable format
#     1) df -h ;;

#     # Option 2: Display how long the system has been running
#     2) uptime ;;

#     # Option 3: List system users
#     # cut extracts usernames from /etc/passwd
#     3) cut -d: -f1 /etc/passwd ;;

#     # Handle invalid input
#     *) echo "Invalid option" ;;
# esac







# # Store the source directory to back up
# SOURCE_DIR="Arena"

# # Store the directory where backups will be saved
# BACKUP_DIR="Backups"

# # Create the backup directory if it does not already exist
# # -p prevents errors if the directory already exists
# mkdir -p "$BACKUP_DIR"

# # Generate a timestamp for the backup filename
# # Format: YYYY-MM-DD_HH-MM-SS
# TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# # Create a unique backup filename using the timestamp
# BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# # Create a compressed archive of the source directory
# # -c create archive, -z gzip compression, -f specify filename
# tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

# # Confirm the backup was created
# echo "Created backup: $BACKUP_NAME"

# # Change into the backup directory
# # Exit the script if the directory change fails
# cd "$BACKUP_DIR" || exit

# # List files sorted by modification time (newest first)
# # sed '1,5d' deletes the first 5 lines (keeps the 5 newest backups)
# # Remaining files are older backups and will be removed
# ls -t | sed -e '1,5d' | while IFS= read -r file; do

#     # Remove old backup files
#     rm -f "$file"

# done






# # Store the configuration file name in a variable
# CONFIG_FILE="settings.conf"

# # Check if the configuration file does NOT exist
# # -f checks if a regular file exists
# # '!' negates the condition
# if [ ! -f "$CONFIG_FILE" ]; then
#     echo "Configuration file does not exist."
#     exit 1
# fi

# # Read the configuration file line by line
# # IFS='=' sets the delimiter to split each line at '='
# # read -r prevents backslash interpretation
# while IFS='=' read -r key value; do

#     # Display each key-value pair from the config file
#     echo "Key: $key, Value: $value"

# # Redirect the contents of the config file into the loop
# done < "$CONFIG_FILE"





# # Store the directory to monitor in a variable
# DIRECTORY="Arena"

# # Set the disk usage threshold (in megabytes)
# # If usage exceeds this value, a warning will be triggered
# THRESHOLD=1

# # Calculate disk usage of the directory
# # du -sm shows disk usage in megabytes
# # awk extracts the numeric size value
# USAGE=$(du -sm "$DIRECTORY" | awk '{print $1}')

# # Compare the current usage with the threshold
# # -gt checks if USAGE is greater than THRESHOLD
# if [ "$USAGE" -gt "$THRESHOLD" ]; then

#     # Display a warning message if usage exceeds the threshold
#     echo "Warning: Disk usage for $DIRECTORY is at $USAGE MB!"

# else
#     # Display a normal status message if usage is within limits
#     echo "Disk usage for $DIRECTORY is at $USAGE MB. All is well."
# fi
