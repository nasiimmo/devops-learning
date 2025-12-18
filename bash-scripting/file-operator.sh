#!/bin/bash


# Define a function named 'process_file'
process_file() {

  # Declare a local variable 'file_path' and assign it the first argument
  local file_path="$1"

  # Use 'cat' to send the file contents into a while loop
  # Read the file line by line
  # IFS= preserves leading/trailing whitespace
  # -r prevents backslash escape interpretation
  cat "$file_path" | while IFS= read -r line; do

    # Print a message for each processed line
    echo "Processing line: $line"

  # End of the while loop
  done
}

# Call the function and pass the file path as an argument
process_file "./arithmetic.sh"



# # Define a function named 'read_file'
# read_file() {

#   # Declare a local variable 'file_path' and assign it the first argument passed to the function
#   local file_path="$1"

#   # Read the file line by line
#   # IFS= prevents trimming leading/trailing whitespace
#   # -r prevents backslash escape interpretation
#   while IFS= read -r line; do

#     # Print the current line
#     echo "$line"

#   # Redirect the file as input to the while loop
#   done < "$file_path"
# }

# # Call the function 'read_file' and pass the file path as an argument
# read_file "./arithmetic.sh"
