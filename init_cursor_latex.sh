#!/bin/bash

# Get the real path of the script, following symlinks
SCRIPT_PATH="$(readlink -f "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

# Get the current working directory (target directory)
TARGET_DIR="$(pwd)"

# Check if .cursor directory exists in source
if [ ! -d "$SCRIPT_DIR/.cursor" ]; then
    echo "Error: .cursor directory not found in '$SCRIPT_DIR'"
    exit 1
fi

# Create .cursor directory if it doesn't exist
mkdir -p "$TARGET_DIR/.cursor"

# Copy new files from the .cursor directory, preserving existing ones
echo "Copying new cursor rules from $SCRIPT_DIR/.cursor to $TARGET_DIR/.cursor"
cp -nr "$SCRIPT_DIR/.cursor/"* "$TARGET_DIR/.cursor/" 2>/dev/null || true

# Copy .gitignore file if it exists
if [ -f "$SCRIPT_DIR/.gitignore" ]; then
    echo "Copying .gitignore file"
    cp -n "$SCRIPT_DIR/.gitignore" "$TARGET_DIR/" 2>/dev/null || true
fi

echo "Cursor rules copied successfully!"
echo "Existing files were preserved, only new files were copied."