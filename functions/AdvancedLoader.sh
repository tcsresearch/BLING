# typically you would break from loops and return from functions.

function AdvancedLoader() {
### FIXME: Running script causes logout with or without a parameter.
# If no parameters are specified, show help screen.
# if [ -z "$1" ]; then
 # echo "Usage: $0 <filename>"
 # echo "Where <filename> is the name of the list you wish to load."
  # exit 1 # Could be cause of logout.
# fi

  # Assuming 'files.list' contains a list of filenames, one per line
  for file in $(cat functions.list); do
    echo "Loading Function: $file"
    source $file
    if [ $? -eq 0 ] 
    then 
      echo "Successfully Loaded Function: $file." 
    break 0 
    else 
      echo "ERROR: Could not load function: $file! " >&2 
    break 1 
    fi
  done  
}
########################################################################################

