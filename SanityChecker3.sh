#!/bin/env bash

# SanityChecker3.sh - Adds checks if requested file/folder exists as file vs folder, etc.

 # Define colors
    GREEN='\033[0;32m'
    ORANGE='\033[0;33m'
    RED='\033[0;31m'
    NC='\033[0m' # No Color


# Function to check a file path
check_path_file() {
    local file_path="$1"
    if [ -f "$file_path" ]; then
        # echo "Success: File exists at '$file_path'."
        echo -e "$1 exists.  ${GREEN} [ OK ]${NC}"
        return 0
    elif [ -d "file_path" ]; then
          echo -e "$1 exists as a folder, but not as a file. ${ORANGE} [ WARNING ]${NC}"
    else
        # echo "Error: File does not exist at '$file_path'."
        echo -e "$1 does not exist.  ${RED}  [ NOT OK ]${NC}"
        return 1
    fi
}

# Function to check a folder path and prompt for creation if missing
check_path_folder() {
    local folder_path="$1"
    if [ -d "$folder_path" ]; then
        # echo "Success: Folder exists at '$folder_path'."
        echo -e "${GREEN}[ OK ]${NC} Folder $1 Exists."
        return 0
    elif [ -f "folder_path" ]; then
          echo -e "$1 exists as a file, but not as a folder. ${ORANGE} [ WARNING ]${NC}"
    else
        # echo "Error: Folder does not exist at '$folder_path'."
        echo -e "${ORANGE}[ WARNING ]${NC} Folder $1 does not exist."
        
        # Interactive prompt for folder creation
        # Disabled first entry for ShellCheck
        # read -p "Would you like to create this folder? (y/N): "
        read -pr "Would you like to create this folder? (y/N): "
        case "$response" in
            [yY][eE][sS]|[yY])
                mkdir -p "$folder_path"
                if [ $? -eq 0 ]; then
                    echo -e "${GREEN} [ OK ]:${NC} Folder created at '$folder_path'."
                    return 0
                else
                    echo "${RED} [ ERROR ]:${NC} Failed to create folder at '$folder_path'."
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
