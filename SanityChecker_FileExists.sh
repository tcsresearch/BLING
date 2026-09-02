check_path() {
    # Define colors
    GREEN='\033[0;32m'
    RED='\033[0;31m'
    NC='\033[0m' # No Color

    # Check if input is provided
    if [ -z "$1" ]; then
        echo -e "${RED}[!] No path provided${NC}"
        return
    fi

    # Check existence
    if [ -e "$1" ]; then
        # echo "$1 exists."
        # echo -e "{GREEN} [ OK ]${NC}"
        # echo -e "$1 exists." && echo -e "{GREEN} [ OK ]${NC}"
        ##  echo -e "${GREEN}[ OK ]${NC} $1 exists."
         echo -e "$1 exists.  ${GREEN} [ OK ]${NC}"
    else
        # echo "$1 does not exist."
        # echo -e "${RED} [ NOT OK ]${NC}"
        # echo -e "$1 does not exist." && echo -e "${RED} [ NOT OK ]${NC}"
        ## echo -e "${RED}[ NOT OK ]${NC} $1 does not exist."
         echo -e "$1 does not exist.  ${RED}  [ NOT OK ]${NC}"
    fi
}

#### Main Program ####
check_path $1

# Example usage:
# check_path "/etc/hosts"
# check_path "/home/user/missing_folder"
