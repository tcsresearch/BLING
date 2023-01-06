echo "BLING Library Utility - Version 0.2"
echo " "

echo "Loading Functions..."
## Sanity Check - BuildLib Functions File ##
FuncFile='BuildLib.func'
if [ ! -d $FuncFile ]; then 
	echo "ERROR!  BuildLib2 Functions File $FuncFile does not exist.  Quitting..."
	exit 1
fi

. BuildLib.func
echo "Functions Loaded."


### Main Program ###
# DisplayBanner
CheckFuncDir
CheckBackupDir
CheckLibDir
# CheckLib
BackupLib
BuildLib
