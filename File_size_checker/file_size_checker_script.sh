#!/bin/bash
# Prompts the user to enter a file path
read -p "Enter the file path: " file_path

# Checks if the file exists
if [ -f "$file_path" ]; then
  # Retrieves and displays the size of the file in bytes
  file_size=$(du -b "$file_path" | awk '{print $1}')
  echo "File Size: $file_size bytes"
else
  echo "File not found!"
fi