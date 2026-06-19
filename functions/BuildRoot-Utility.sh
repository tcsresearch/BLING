### BuildRoot Utility ###
# DEFINE VERSION #
BRU_Version="0.1"
#   This utility will check the size of the buildroot and clean it when needed.
#
########## BEGIN BUILDROOT FOLDERS ##########
BuildRoot_Root="/root/buildroot"
## TODO: Add amiroot.sh fucntionality as function
#
BuildRoot_Kbuild="/home/kbuild/buildroot"
# Needs testing - Can be removed upon implementation and testing of BuildRoot_CurrentUser.
#
BuildRoot_CurrentUser="~/buildroot"
# Needs Testing.  Can supercede other options once testing completed.
#
### TODO:       Introduce Sanity Checks.
#               Finish and test variable functionality.
#               Add buildroot backup function.
#               Integrate functions into program.
########## END BUILDROOT FOLDERS ##########

### Variable Definitions ###
FolderList="BUILD BUILDROOT"

### Functions ###
Size_BuildRoot() {
        du -sh BUILD
        du -sh BUILDROOT
}

Clean_BuildRoot() {  ## Add Y/N Sanity Check before deleting.
        rm -rfv BUILD/*
        rm -rfv BUILDROOT/*
}

Backup_BuildRoot() {  ## Can call TarMonster when ready.
        ## TODO: Add date utility functionality.
        tar -cvf Build.tar BUILD
        tar -cvf BuildRoot.tar BUILDROOT
}

function Usage() {
  echo "BuildRoot-Utility - Version $BRU_Version."
  echo " "
  echo "Configuration: "
  echo "  Size_BuildRoot:      Show sizes of folders inside BUILDROOT."
  echo "  Clean_BuildRoot:     Clean folders inside BUILDROOT."
  echo "  Backup_BuildRoot:    Backup folders inside BUILDROOT."
  echo "  ShowConfig:          Show Configuration."
  echo " "
  }

function ShowConfig() {
  echo "BuildRoot-Utility - Version $BRU_Version."
  echo " "
  echo "Usage: "
  echo "  BuildRoot_Root:          $BuildRoot_Root"
  echo "  BuildRoot_Kbuild:        $BuildRoot_Kbuild"
  echo "  BuildRoot_CurrentUser:   $BuildRoot_CurrentUser"
  echo " "
  }

  ########## Main Program ##########
  Usage
