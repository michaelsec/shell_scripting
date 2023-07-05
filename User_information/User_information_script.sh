#!/bin/bash
# Display user information
echo "=== User Information ==="

# List the logged-in users by extracting the first field from the 'who' command, sorting them alphabetically, and removing duplicates
echo "Logged-in Users: $(who | awk '{print $1}' | sort | uniq)"

# Print the user's home directory
echo "User Home Directory: $HOME"

# Print the user's default shell
echo "User Shell: $(echo $SHELL)"

# Print the user's ID
echo "User ID: $(id -u)"
