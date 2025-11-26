# BootConfigTool - Changes between graphical and commandline boot types
#
## TODO: Setup case for usage.

function BootConfigTool_DisplayBanner() {
	echo "$0."
	echo " "


function BootConfigTool_Usage() {
	echo "Usage: "	
	echo " $0 --get:				Displays current config."
	echo " $0 --set [ commandline | graphical ]: 	Sets boot type to the specified type."
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

echo " Not Fully Implemented Yet."
echo "  Use one of the functions to call manually for now."
echo " "

