#!/bin/bash


# Print all executable search paths
echo "Executable paths: $PATH"

# Print the current user's login name
echo "Username: $LOGNAME"

# Print the default shell for the current user
echo "Shell: $SHELL"

# Print the current working directory
echo "PWD: $PWD"

# Print the system's default language and locale
echo "Default Language: $LANG"


# Store the current user's home directory in the variable 'my_home'
my_home="$HOME"

# Store the current username in the variable 'my_user'
my_user="$USER"

# Store the operating system type in the variable 'my_os'
my_os="$OSTYPE"

# Print the user's home directory
echo "Home directory: $my_home"

# Print the current user
echo "Currrent user: $my_user"

# Print the operating system type
echo "OS type: $my_os"
