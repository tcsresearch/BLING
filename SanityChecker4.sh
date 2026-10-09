#!/bin/env bash

# SanityChecker4.sh - Adds checks if requested file/folder exists as file vs folder, etc.


#######################################################################################################################
# Define colors #                                                                                                     #
#######################################################################################################################
    GREEN='\033[0;32m'
    ORANGE='\033[0;33m'
    RED='\033[0;31m'
    NC='\033[0m' # No Color

#######################################################################################################################
# SanityChecker Function: Alias Function #                                                                            #
#######################################################################################################################
 # Alias Function that maps SanityChecker_Disk to either SanityChecker_Disk_GB or SanityChecker_Disk_MB.
function SanityChecker_Disk() {
 SanityChecker_Disk_GB
 # SanityChecker_Disk_MB
 }

#######################################################################################################################
# SanityChecker Function: FILE Exists #                                                                               #
#######################################################################################################################
 # Function to check a file path
SanityChecker_File() {
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

#######################################################################################################################
# SanityChecker Function: FOLDER Exists #                                                                             #
#######################################################################################################################
 # Function to check a folder path and prompt for creation if missing
SanityChecker_Folder() {
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
        # read -p "Would you like to create this folder? (y/N): " # Disabled for ShellCheck
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


#######################################################################################################################
# SanityChecker Function: DISK Space in GB #                                                                          #
#######################################################################################################################
SanityChecker_Disk_GB() {
    # Ensure both arguments are provided
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Usage: CheckDiskSpaceFree <directory> <required_bg_gb>"
        return 1
    fi

    local target_dir="$1"
    local required_gb="$2"

    # Extract available space in gigabytes using df
    # 'df -BG' outputs sizes in 1024³-byte blocks with a 'G' suffix
    local available_gb
    available_gb=$(df -BG "$target_dir" | awk 'NR==2 {print $4}' | tr -d 'G')

    # Compare available space with required space
    if [ "$available_gb" -ge "$required_gb" ]; then
        echo "Success: $target_dir has ${available_gb}GB free (Required: ${required_gb}GB)."
        return 0
    else
        echo "Error: $target_dir only has ${available_gb}GB free (Required: ${required_gb}GB)."
        return 1
    fi
}


#######################################################################################################################
# SanityChecker Function: DISK Space in MB #                                                                          #
#######################################################################################################################
SanityChecker_Disk_MB() {
    # Ensure both arguments are provided
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Usage: CheckDiskSpaceFree <directory> <required_bg_mb>"
        return 1
    fi

    local target_dir="$1"
    local required_mb="$2"

    # Extract available space in gigabytes using df
    # 'df -BG' outputs sizes in 1024³-byte blocks with a 'G' suffix
    local available_mb
    available_mb=$(df -BM "$target_dir" | awk 'NR==2 {print $4}' | tr -d 'M')

    # Compare available space with required space
    if [ "$available_mb" -ge "$required_mb" ]; then
        echo "Success: $target_dir has ${available_mb}MB free (Required: ${required_mb}MB)."
        return 0
    else
        echo "Error: $target_dir only has ${available_mb}MB free (Required: ${required_mb}MB)."
        return 1
    fi
}


#######################################################################################################################
# SanityChecker Function: DISK Space in MB or GB #                                                                    #
#######################################################################################################################
SanityChecker_Disk_NewTest() {
    # Ensure both arguments are provided
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Usage: SanityChecker_Disk <directory> <required_bg_gb>"
        return 1
    fi

    local target_dir="$1"        # FIXME: Specify . as default?
    # local target_dir="."            # FIXME Option 1.
    # local target_dir="$(pwd)"       # FIXME Option 2.
    ## local target_dir="${1:-"$(pwd)"}" # FIXME Option 3 (Best?)
    local required_gb="$2"
    # Proposed MB option variable
    local required_mb="$2"

    # Extract available space in gigabytes using df
    # TODO: Add option to specify MB instead of GB ?
    # 'df -BG' outputs sizes in 1024³-byte blocks with a 'G' suffix
    local available_gb
    available_gb=$(df -BG "$target_dir" | awk 'NR==2 {print $4}' | tr -d 'G')
    ### Proposed MB option.
    # 'df -BM' outputs sizes in 1024²-byte blocks with a 'M' suffix
    local available_mb
    available_mb=$(df -BM "$target_dir" | awk 'NR==2 {print $4}' | tr -d 'M')


    # Compare available space with required space
    if [ "$available_gb" -ge "$required_gb" ]; then
        echo "Success: $target_dir has ${available_gb}GB free (Required: ${required_gb}GB)."
        return 0
    else
        echo "Error: $target_dir only has ${available_gb}GB free (Required: ${required_gb}GB)."
        return 1
    fi

 # Compare available space with required space
    if [ "$available_mb" -ge "$required_mb" ]; then
        echo "Success: $target_dir has ${available_mb}MB free (Required: ${required_mb}MB)."
        return 0
    else
        echo "Error: $target_dir only has ${available_mb}MB free (Required: ${required_mb}MB)."
        return 1
    fi

}




#######################################################################################################################
# Print Usage Instructions #                                                                                          #
#######################################################################################################################
SanityChecker_Usage() {
    echo "Usage: $0 [file|folder|disk] [path]"
    echo "Example: $0 file /path/to/file.txt"
    echo "Example: $0 folder /path/to/folder"
    echo "Example: $0 disk . 5"
}

# Main execution logic
# if [ $# -lt 2 ]; # OLD: Requires minimum 2 args; upgraded to 3 args for disk free feature.
if [ $# -lt 3 ];   # NEW: Requires minimum 3 args; upgraded to 3 args for disk free feature.
    SanityChecker_Usage
    exit 1
fi

COMMAND="$1"
TARGET_PATH="$2"
DISK_SPACE="$3"

case "$COMMAND" in
    file)
        SanityChecker_File "$TARGET_PATH"
        ;;
    folder)
        SanityChecker_Folder "$TARGET_PATH"
        ;;
    disk)
        SanityChecker_Disk "$DISK_SPACE"
        ;;
    *)
        echo "Error: Invalid option '$COMMAND'."
        SanityChecker_Usage
        exit 1
        ;;
esac
