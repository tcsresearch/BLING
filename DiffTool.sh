#!/bin/env bash

# DiffTool.sh - Shows only new lines on file specificed by $2.

# Assign args to variables
FILE_1="$1"
FILE_2="$2"

# Check if zero arguments were passed
if [ "$#" -eq 0 ]; then
    echo "Error: No arguments provided." >&2
    echo "Usage: $0 <arg1> <arg2>"
    exit 1
fi

echo "Arguments received: $@"


# Compare files
diff -y $FILE_1 $FILE_2 | grep ">"

# diff -y RepoSyncTest3_Updates.sh RepoSyncTest4_Updates.sh | grep ">"
