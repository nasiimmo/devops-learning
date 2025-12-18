#!/bin/bash



# Enable debug mode: print each command before it is executed
set -x

# Assign the value 10 to the variable 'y'
y=10

# Assign the value 20 to the variable 'x'
x=20

# Perform arithmetic addition and store the result in 'z'
z=$((x + y))

# Print the value of 'z'
echo "The value of z is: $z "

# Disable debug mode
set +x

# Print a message after debug mode is turned off
echo "after the script"



# Check whether the 'git' command exists on the system
# Redirect error output to /dev/null to suppress messages
command -v git 2>/dev/null

# Check the exit status of the previous command
# A non-zero value means the command was not found
if [[ $? -ne 0 ]]; then

  # Print an error message if Git is not installed
  echo "Git is not installed. Please install Git."

  # Exit the script with a non-zero status code to indicate failure
  exit 1

else
  # Print a message confirming that Git is installed
  echo "Git is installed"

fi




# # Store the file path to be checked in the variable 'FILE'
# FILE="./nonexistent"

# # Check if the file exists and is a regular file
# if [[ -f "$FILE" ]]; then

#   # Print a message if the file exists
#   echo "File exists"

# else
#   # Print a message if the file does not exist
#   echo "File does not exist"

# fi





# # Assign the value 10 to the variable 'num1'
# num1=10

# # Assign the value 0 to the variable 'num2'
# num2=0

# # Check if 'num2' is equal to 0 (to prevent division by zero)
# if [ $num2 -eq 0 ]; then

#     # Print an error message indicating division by zero is not allowed
#     echo "Error: division by 0 is not allowed"

#     # Exit the script with a non-zero status code to indicate an error
#     exit 1
# fi

# # Perform integer division and store the result in the variable 'result'
# result=$(( num1 / num2 ))

# # Print the result of the division
# echo "The result is: $result"
