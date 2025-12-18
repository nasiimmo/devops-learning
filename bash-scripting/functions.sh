#!/bin/bash


# Define a function named 'compare_checksum'
compare_checksum() {

  # Declare a local variable 'checksum1' and assign it the first checksum argument
  local checksum1="$1"

  # Declare a local variable 'checksum2' and assign it the second checksum argument
  local checksum2="$2"

  # Compare the two checksum values
  if [[ "$checksum1" == "$checksum2" ]]; then

    # Print a message if the checksums match
    echo "Checksums match. File is intact"

  else
    # Print a message if the checksums do not match
    echo "Checksums do not match. File integrity compromised"
  fi
}

# Call the function 'compare_checksum' with two example checksum values
compare_checksum "123" "123"





# # Define a function named 'calculate_md5sum'
# calculate_md5sum() {

#   # Declare a local variable 'file_path' and assign it the file path argument
#   local file_path="$1"

#   # Generate and print the MD5 checksum of the file
#   md5sum "$file_path"
# }

# # Call the function 'calculate_md5sum' and pass the file name as an argument
# calculate_md5sum "read.txt"



# # Define a function named 'calculate_sha256sum'
# calculate_sha256sum() {

#   # Declare a local variable 'file_path' and assign it the file path argument
#   local file_path="$1"

#   # Generate and print the SHA-256 checksum of the file
#   sha256sum "$file_path"
# }

# # Call the function 'calculate_sha256sum' and pass the file name as an argument
# calculate_sha256sum "read.txt"




# # Define a function named 'write_to_file'
# write_to_file() {

#   # Declare a local variable 'file_path' and assign it the file name
#   local file_path="$1"

#   # Declare a local variable 'data' and assign it the second argument
#   local data="$2"

#   # Write the data to the file
#   # '>' overwrites the file if it already exists
#   echo "$data" > "$file_path"
# }

# # Call the function 'write_to_file'
# # This will create (or overwrite) 'read.txt' with the text "Hello World"
# write_to_file "read.txt" "Hello World"



# # Define a function named 'get_file_count'
# get_file_count() {

#   # Declare a local variable 'directory' and assign it the first argument passed to the function
#   local directory="$1"

#   # Declare a local variable to store the number of files
#   local file_count

#   # List the contents of the directory, count the number of lines, and store the result in 'file_count'
#   file_count=$(ls "$directory" | wc -l)

#   # Print the number of files in the specified directory
#   echo "number of files in $directory: $file_count"

# }

# # Call the function 'get_file_count' and pass the current directory as an argument
# get_file_count "./"




# # Define a function named 'greet'
# greet() {

#   # Declare a local variable named 'name'
#   local name

#   # Check if no arguments were passed to the function
#   if [ $# -eq 0 ]; then

#     # Prompt the user to enter their name
#     echo "What is your name?"

#     # Read the user's input and store it in the variable 'name'
#     read name

#   else
#     # Assign the first argument passed to the function to 'name'
#     name="$1"
#   fi

#   # Print a greeting using the value stored in 'name'
#   echo "Hello $name"

# }

# # Call the function 'greet'
# greet



# # Define a function named 'greet_user'
# greet_user() {

#   # Ask the user to enter their name
#   echo "What is your name?"

#   # Read the user's input and store it in the variable 'name'
#   read name

#   # Print a greeting using the user's name
#   echo "Hello, $name!"

# }

# # Call the function 'greet_user'
# greet_user





# # Define a function named 'prints_args'
# prints_args() {

#   # Print the total number of arguments passed to the function
#   echo "Number of arguments: $#"

#   # Print the name of the script or shell being executed
#   echo "Script name: $0"

#   # Print the first argument passed to the function
#   echo "First argument: $1"

#   # Print the second argument passed to the function
#   echo "Second argument: $2"

#   # Print all arguments passed to the function as a list
#   echo "All arguments: $@"

# }

# # Call the function 'prints_args' with two arguments: "Alice" and "Bob"
# prints_args "Alice" "Bob"





# # Define a function named 'hello_world'
# hello_world(){

#   # Print "Hello World!" to the terminal
#   echo "Hello World!"

# }

# # Call the function 'hello_world'

# # Call the function 'hello_world'
# hello_world

# # Define a function named 'great_person'
# great_person(){

#   # Declare a local variable 'name' and assign it the first argument passed to the function
#   local name="$1"

#   # Print a personalized greeting using the 'name' variable
#   echo "Hello, $name!"

# }

# # Call the function 'great_person' and pass "Ahmed" as an argument
# great_person "Ahmed"
