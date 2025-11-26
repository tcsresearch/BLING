#!/bin/bash

SCRIPT_FILE="your_script.sh" # Replace with your script file

# Extract function names
function_names=$(grep -E '^(function )?[a-zA-Z_][a-zA-Z0-9_]*\(\)' "$SCRIPT_FILE" | \
                 sed -E 's/^(function )?([a-zA-Z_][a-zA-Z0-9_]*)\(\).*/\2/')

echo "case \$1 in"
for func_name in $function_names; do
  echo "  $func_name)"
  echo "    $func_name \"\$@\"" # Call the function with all arguments
  echo "    ;;"
done
echo "  *)"
echo "    echo \"Usage: $0 {$(echo $function_names | sed 's/ /|/g')}\""
echo "    exit 1"
echo "    ;;"
echo "esac"
