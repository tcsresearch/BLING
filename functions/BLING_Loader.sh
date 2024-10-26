# Assuming 'files.list' contains a list of filenames, one per line
for file in $(cat BLING_functions.list); do
  echo "Loading Function: $file"
  source $file
done
