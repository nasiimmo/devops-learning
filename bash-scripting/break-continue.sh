#!/bin/bash

# count=1

# while [ $count -le 5 ]
# do 
#     if [ $count -eq 3 ]
#     then 
#       ((count++))
#       continue
#     fi
#       echo "Count: $count"
#       ((count++))
# done





# # Initialize the variable 'count' with a starting value of 1
# count=1

# # Start an infinite loop (true always evaluates to true)
# while true
# do
#   # Print the current value of 'count' to the terminal
#   echo "Count: $count"

#   # Increment 'count' by 1
#   ((count++))

#   # Check if 'count' is equal to 4
#   if [ $count -eq 4 ]
#   then
#     # Exit the loop when 'count' reaches 4
#     break
#   fi

# # End of the while loop
# done




# # Start a for loop where:
# # i begins at 1
# # the loop continues while i is less than or equal to 5
# # and i increases by 1 after each iteration
# for (( i=1; i<=5; i++ ))
# do 
#     # Check if the current value of i is equal to 3
#     if [ $i -eq 3 ]
#     then
#         # Skip the rest of this iteration when i equals 3
#         # The loop will continue with the next value of i
#         continue
#     fi

#     # Print the current value of i
#     # This line will be skipped only when i is 3
#     echo "Number: $i"
# done


# # Start a for loop where:
# # i begins at 1
# # the loop continues while i is less than or equal to 5
# # and i increases by 1 after each iteration
# for (( i=1; i<=5; i++ ))
# do 
#     # Check if the current value of i is equal to 3
#     if [ $i -eq 3 ]
#     then
#         # Exit (break out of) the loop completely when i equals 3
#         break 
#     fi

#     # Print the current value of i
#     # This line will not run once the loop is broken
#     echo "Number: $i"
# done
