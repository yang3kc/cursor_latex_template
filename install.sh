#!/bin/bash

# Check if installation path is provided
if [ $# -ne 1 ]; then
    echo "Error: Please provide the installation path"
    echo "Usage: $0 /path/to/installation"
    echo "Example: $0 /usr/local/bin"
    exit 1
fi

INSTALL_PATH="$1"
SCRIPT_PATH="$(readlink -f "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
SOURCE_SCRIPT="$SCRIPT_DIR/init_cursor_latex.sh"
TARGET_LINK="$INSTALL_PATH/init_cursor_latex"

# Check if source script exists
if [ ! -f "$SOURCE_SCRIPT" ]; then
    echo "Error: init_cursor_latex.sh not found in the same directory"
    exit 1
fi

# Check if installation directory exists
if [ ! -d "$INSTALL_PATH" ]; then
    echo "Error: Installation directory '$INSTALL_PATH' does not exist"
    exit 1
fi

# Check if we have write permission to the installation directory
if [ ! -w "$INSTALL_PATH" ]; then
    echo "Error: No write permission in '$INSTALL_PATH'"
    echo "Try running with sudo: sudo $0 $INSTALL_PATH"
    exit 1
fi

# Make the source script executable
chmod +x "$SOURCE_SCRIPT"

# Remove existing symlink if it exists
if [ -L "$TARGET_LINK" ]; then
    echo "Removing existing symlink..."
    rm "$TARGET_LINK"
elif [ -e "$TARGET_LINK" ]; then
    echo "Error: '$TARGET_LINK' exists and is not a symlink"
    exit 1
fi

# Create the symlink
ln -s "$SOURCE_SCRIPT" "$TARGET_LINK"

echo "Installation successful!"
echo "You can now use 'init_cursor_latex' command from anywhere."