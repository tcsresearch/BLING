function AdvancedLoader() {
# If no parameters are specified, show help screen.
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  echo "Where <filename> is the name of the list you wish to load."
  exit 1
fi

  # Assuming 'files.list' contains a list of filenames, one per line
  for file in $(cat $1); do
    echo "Loading Function: $file"
    source $file
    if [ $? -eq 0 ] 
    then 
      echo "Successfully Loaded Function: $file." 
    exit 0 
    else 
      echo "ERROR: Could not load function: $file! " >&2 
    exit 1 
    fi
  done  
}
########################################################################################

