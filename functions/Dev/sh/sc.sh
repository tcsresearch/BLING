#!/bin/env bash
# This is a wrapper around systemctl w/ green and red messages for success or failure.

# Run systemctl with all arguments
systemctl "$@"

# Check the exit code of the last run command
if [ $? -eq 0 ]; then
    # Print GREEN success
    echo -e "\e[32mSUCCESS: systemctl command completed successfully.\e[0m"
else
    # Print RED failure
    echo -e "\e[31mFAILED: systemctl command encountered an error.\e[0m"
fi
