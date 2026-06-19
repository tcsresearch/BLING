#!/bin/env bash

# Kernel Indepth Static Sanity (KISS) Checker Tool 
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

#############################################################################################
# Define Config & Function Files #                                                          #
#############################################################################################

KCT_ConfigFile="KISSChecker.conf"
KCT_FuncFile="KISSChecker.bfunc"

#############################################################################################
# Source Config #                                                                           #
#############################################################################################

function KCT_SourceConfig(){
  if [ ! -f "$KCT_ConfigFile" ]; then
    echo "ERROR: File $KCT_ConfigFile Not Found!"
    return
  else
    source "$KCT_ConfigFile"
  fi
}

function KCT_SourceFunctions(){
  if [ ! -f "$KCT_FuncFile" ]; then
    echo "ERROR: File $KCT_FuncFile Not Found!"
    return
  else
    source "$KCT_FuncFile"
  fi
}


#############################################################################################
# Main Program #                                                                            #
#############################################################################################

### Source Config & Functions Library ###
KCT_SourceConfig
KCT_SourceFunctions

### Run Startup Functions ###
DisplayBanner
SanityCheck_LogDirExists
SanityCheck_MakeFileExists
# SanityCheck_IsKernelMakefile

### Run Main Program ###
Main_Program
