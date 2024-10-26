function DisplayBanner() {
echo "Kernel Indepth Static Sanity (KISS) Checker Tool"
echo "Version $Version.  Developed by TCS Research."
echo "Release Date: $ReleaseDate"
echo " "
echo "Selected TestList Name: $Selected_TestList"
echo "Tests To Run: ???  "
echo " "
# TODO: Align output.
}

### Define DisplayBanner Parameters
Version="0.1.3.2"
ReleaseDate="Sun Sep 9 2023"

## Changes in 0.1.3.2
#	Fixed typo in TestList_Most
#	Introduced Selected_TestList Config Option
#	Introduce DisplayBanner Parameters.
#	Begin Split Into Functions
#	Introduce more sanity checks (SanityCheck_MakeFileExists and SanityCheck_IsKernelMakefile)
#
## Changes in 0.1.3.1
#	Updated TODO
#	Changed TestList to TestList_Main
#
## Changes in 0.1.3
#	Updated TestList variables for future functionality

# This script will run various static analyser checks on the Linux kernel, as per the Makefile.
# Requires Kernel Makefile and compiled sources and/or vmlinux file.
#
### Core Commands- no logging ###
# make checkstack
# make versioncheck
# make includecheck
# make export_report
# make headerdep
# make coccicheck
# make clang-analyzer
# make clang-tidy

### TODO:###
#	Stop Program if not in built Kernel directory (SanityCheck_KBuildDir)
#	Needs to run with Kernel Makefile and copy of compiled vmlinux.
#		Should we include a Kernel Makefile?
#		Specify vmlinux via option/cmdline?  Running copy and/or rpmbuild based?
#	Split into functions/vars/configs etc.
#	Add Log By Date Capability (via $Today in BLING)
#	Add -a option to tee command as command line option?
#	Include cecho as library for fancy output.
#	Use colorized output from cecho.
#	[PENDING] Configure where log files will be stored.
#	Should we grep for certain major flaws that could be exposed by the logfiles?
#		e.g. instead of scanning for x, tool can do it for us.	



## --- Define Variables --- ###
LogDir="testlogs"

## Define Test Variables For Loop
TestList_All=("checkstack versioncheck includecheck export_report headerdep coccicheck clang-analyzer clang-tidy")
## Disabled coccicheck due to length of time required to run
TestList_Most=("checkstack versioncheck includecheck export_report headerdep clang-analyzer clang-tidy") ## Main List
TestList_Core=("checkstack versioncheck includecheck export_report headerdep") ## Core Tests
TestList_Clang=("clang-analyzer clang-tidy") ## clang tests
TestList_Cocci=("coccicheck") ## This test takes a while to run
#
## Define Config Option to select a TestList
### Change this to select which TestList to run.
# TODO: Make Selected_TestList a cmdline option.
Selected_TestList="TestList_Most"
#

function SanityCheck_LogDirExists() {
## FIXME: Program fails when testlogs folder and files not present; introduce sanity check.
#		if statement not working, does not create $LogDir.
#		Have the sanity check root and use sudo if needed (will require chown/chmod as new folder will be root only).
#
if [ ! -d ${LogDir} ]
then
    mkdir -p ${LogDir}
fi

#
# Temp Fix For if Statement
## mkdir -p testlogs

}

function SanityCheck_MakeFileExists () {
	# TODO: Modify sanity check to ensure it is a Kernel Makefile.
	if [ ! -f Makefile ]
	then
		echo "ERROR: Kernel Makefile not found...quitting."
		exit 2
	fi

}

function SanityCheck_IsKernelMakefile() {
	#  Here we use grep to read Makefile and ensure it belongs to the Linux Kernel.
	## INFO: We cannot have an empty function - even if it isn't called.  Script refuses to run.
	echo " "	# Fixes refusal to run on empty function.
}


function Main_Program() {
### --- Main Program --- ###
# FIXME: $Selected_TestList NOT WORKING.
# for TestName in $Selected_TestList
for TestName in $TestList_Most
do
	echo Running Static Analyzer Test $TestName... 
	make $TestName > $LogDir/$TestName.log
	echo $TestName Completed.  See $LogDir/$TestName.log For Results.
done
}


### Run Our Functions
DisplayBanner
SanityCheck_LogDirExists
SanityCheck_MakeFileExists
# SanityCheck_IsKernelMakefile
Main_Program

