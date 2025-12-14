# BootConfigTool - Changes between graphical and commandline boot types
#

function BootConfigTool_DisplayBanner() {
	echo "$0."
	echo " "


function BootConfigTool_Usage() {
	echo "Usage: "	
	echo " $0 --get:				Displays current config."
	echo " $0 --set [ commandline | graphical ]: 	[ NOT IMPLEMENTED] Sets boot type to the specified type."
	echo " $0 --set-commandline: 					Sets boot type to commandline."
	echo " $0 --set-graphical: 						Sets boot type to graphical."
	echo " "
}

### Define Main Functions ###
	
function BootConfigTool_GetCurrentConfig() {
	echo "Current Boot Type Is: "
	systemctl get-default
}

function BootConfigtool_SetCommandLine() {
	echo "Setting Boot Type To: Commandline..."
	systemctl set-default multi-user.target
	echo " "
}


function BootConfigTool_SetGraphical() {
	echo "Setting Boot Type To: Graphical..."
	systemctl set-default graphical.target
	echo " "
}

# This can be removed after testing.
function NotImplementedMessage() {
	echo " Not Fully Implemented Yet."
	echo "  Use one of the functions to call manually for now."
	echo " "
}

#################################################################################################################

# Check the value of the first argument ($1)
case "$1" in
    "--get")
        BootConfigTool_GetCurrentConfig
        ;;
    "--set-commandline")
        BootConfigtool_SetCommandLine
        ;;
    "--set-graphical")
        BootConfigTool_SetGraphical
        ;;
    *)
        BootConfigTool_Usage
        exit 1
        ;;
esac

