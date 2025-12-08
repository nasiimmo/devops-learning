5 useful commands i discovered and what they do.

Echo — allows users to display lines of texts into a file in the terminal.

#example

echo "Hello World" > file.txt    # Display text or write to file (overwrites)
echo "More text" >> file.txt     # Append text to file

Grep — This command is used to search for specific text within files, such as words, phrases or patterns

#example

grep "exampleword" *.txt      # Search for text inside files (pattern matching)

grep -r "pattern" /path/to/dir   # Recursively search for "pattern" in all files within the directory and its subdirectories

grep -i "pattern" file.txt      # Search for "pattern" in a file, ignoring case (uppercase/lowercase)

Chmod command allows us to change the permissions of a file or directory

#example

chmod +x hello.sh                # Make a file executable
chmod -x hello.sh                # Remove execute permission
chmod u+r file.txt               # Give owner read permission

uniq – filters out consecutive duplicate lines in a file

#example

uniq input.txt                   # Remove consecutive duplicate lines in a file
sort data.txt | uniq -u           # Show only unique lines after sorting

sort – arranges the lines of a file in alphabetical or numerical order

#example

sort data.txt                    # Sort lines alphabetically
sort -r data.txt                 # Sort lines in reverse order
sort -n numbers.txt              # Sort lines numerically

