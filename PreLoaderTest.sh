#!/usr/bin/env bash

# Define directory paths relative to the script's location
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
CONFIG_DIR="$SCRIPT_DIR/config"
FUNCTIONS_DIR="$SCRIPT_DIR/functions"

# Function to safely source files matching a pattern
source_files() {
    local dir="$1"
    local pattern="$2"

    # Check if the directory exists
    if [ -d "$dir" ]; then
        # Enable nullglob to avoid literal pattern string if no files match
        shopt -s nullglob
        for file in "$dir"/$pattern; do
            # Ensure it is a regular file and readable
            if [ -f "$file" ] && [ -r "$file" ]; then
                source "$file"
            fi
        done
        shopt -u nullglob
    else
        echo "Warning: Directory $dir does not exist." >&2
    fi
}

# Source configuration files
source_files "$CONFIG_DIR" "*.conf"

# Source function files
source_files "$FUNCTIONS_DIR" "*.bfunc"

