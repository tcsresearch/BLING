check_path() {
    # Define colors
    GREEN='\033[0;32m'
    ORANGE='\033[0;33m'
    RED='\033[0;31m'
    NC='\033[0m' # No Color

    # Check if input is provided
    if [ -z "$1" ]; then
        echo -e "${RED}[!] No path provided${NC}"
        return
    fi

    # Check existence
    if [ -f "$1" ]; then
        echo -e "${GREEN}[ OK ]${NC} Folder $1 Exists."
        return
    else
        echo -e "${ORANGE}[ WARNING ]${NC} Folder $1 does not exist. Creating..."
        mkdir -p $1
    fi
}

### Main Program ###
check_path $1

# Example usage:
# check_path "/etc/hosts"
# check_path "/home/user/missing_folder"

