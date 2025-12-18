#!/bin/bash

# Enable unset variable check: script will exit if an undefined variable is used
set -u

# Prompt user for the first number
echo "Enter your first number"
# Read user input and store in variable 'num1'
read num1

# Prompt user for the second number
echo "Enter your second number"
# Read user input and store in variable 'num2'
read num2

# Perform multiplication using arithmetic expansion
Multiplication=$(( num1 * num2 ))
# Display multiplication result
echo "$num1 x $num2 is: $Multiplication"

# Perform addition
Addition=$(( num1 + num2 ))
# Display addition result
echo "$num1 + $num2 is: $Addition"

# Perform subtraction
Subtraction=$(( num1 - num2 ))
# Display subtraction result
echo "$num1 - $num2 is: $Subtraction"

# Check if the second number is not zero before dividing
if [ "$num2" -ne 0 ]; then
  # Perform division
  Division=$(( num1 / num2 ))
  # Display division result
  echo "$num1 / $num2 is: $Division"
else 
  # Print error message if division by zero
  echo "Error: Division by 0"
fi



