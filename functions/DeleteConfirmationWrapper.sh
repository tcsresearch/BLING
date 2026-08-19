#!/bin/bash

read -rp "WARNING: This action requires confirmation. To continue, type 'delete': " confirmation

while [[ "$confirmation" != "delete" ]]; do
  echo "Incorrect confirmation text. Please type 'delete' to proceed."
  read -rp "Type 'delete' to continue: " confirmation
done

echo "Confirmation successful. Proceeding with the action."
# Insert your commands here
