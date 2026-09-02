#!/bin/env bash

 # Define colors
    GREEN='\033[0;32m'
    ORANGE='\033[0;33m'
    RED='\033[0;31m'
    NC='\033[0m' # No Color


# Function to check a file path
check_path_file() {
    local file_path="$1"
    if [ -f "$file_path" ]; then
        echo "Success: File exists at '$file_path'."
        return 0
    else
        echo "Error: File does not exist at '$file_path'."
        return 1
    fi
}

# Function to check a folder path and prompt for creation if missing
check_path_folder() {
    local folder_path="$1"
    if [ -d "$folder_path" ]; then
        echo "Success: Folder exists at '$folder_path'."
        return 0
    else
        echo "Error: Folder does not exist at '$folder_path'."
        
        # Interactive prompt for folder creation
        read -p "Would you like to create this folder? (y/N): " response
        case "$response" in
            [yY][eE][sS]|[yY])
                mkdir -p "$folder_path"
                if [ $? -eq 0 ]; then
                    echo "Success: Folder created at '$folder_path'."
                    return 0
                else
                    echo "Error: Failed to create folder at '$folder_path'."
                    return 1
                fi
                ;;
            *)
                echo "No action taken."
                return 1
                ;;
        esac
    fi
}

# Print usage instructions
print_usage() {
    echo "Usage: $0 [file|folder] [path]"
    echo "Example: $0 file /path/to/file.txt"
    echo "Example: $0 folder /path/to/folder"
}

# Main execution logic
if [ $# -lt 2 ]; then
    print_usage
    exit 1
fi

COMMAND="$1"
TARGET_PATH="$2"

case "$COMMAND" in
    file)
        check_path_file "$TARGET_PATH"
        ;;
    folder)
        check_path_folder "$TARGET_PATH"
        ;;
    *)
        echo "Error: Invalid option '$COMMAND'."
        print_usage
        exit 1
        ;;
esac
