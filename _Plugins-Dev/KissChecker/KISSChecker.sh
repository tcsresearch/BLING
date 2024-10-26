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

### Run Our Functions
DisplayBanner
SanityCheck_LogDirExists
SanityCheck_MakeFileExists
# SanityCheck_IsKernelMakefile
Main_Program
