#!/bin/bash

# Check if the source directory is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <source_directory>"
  exit 1
fi

# Assign the first argument to SOURCE_DIR
SOURCE_DIR="$1"

# Copy files from the source directory to the current directory
echo "Copying .gitignore"
cp "$SOURCE_DIR"/.gitignore .

echo "Copying Makefile"
cp "$SOURCE_DIR"/Makefile .

echo "Copying cursor rules"
cp "$SOURCE_DIR"/.cursorrules .

echo "Copying vscode settings"
cp -r "$SOURCE_DIR"/.vscode .


# Print a message indicating completion
echo "Files have been copied from $SOURCE_DIR to $(pwd)."
