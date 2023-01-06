# This script load all the .func in the functions folder.

# Define Variables #
FuncDir='functions'

# for i in *.txt;do cat $i >> output.txt;done

echo "Loading Functions..."
for i in functions/*.func;do source $i;done
echo "Functions Loaded."
