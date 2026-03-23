To use cecho if it exists, and fall back to echo otherwise, you can use the command -v utility in a Bash script. 
This checks for the command's existence and uses its exit status (0 for success, non-zero for failure) to decide which command to run. 

<p><h4>
Method 1: Define a conditional function (Recommended) 
This approach is efficient because the check only happens once when defining the function.
</h4>

```
if command -v cecho >/dev/null 2>&1; then
    # If cecho exists, define the myprint function to use cecho
    myprint() {
        cecho "$@"
    }
else
    # If cecho does not exist, define the myprint function to use echo
    myprint() {
        echo "$@"
    }
fi

# Use the myprint function to print messages
myprint "Hello World!"
myprint "This works regardless of whether cecho is installed."
```
</p>
<hr>

<p><h4>
Method 2: Use an if/else statement with command -v 
This method checks for the command's existence every time the block is executed.
</h4>
```
message="Hello World!"

if command -v cecho >/dev/null 2>&1; then
    cecho "$message"
else
    echo "$message"
fi
```

</p>
<hr>

<p><h4>
Method 3: Use conditional execution operators && and || 
This is a concise, inline method that works well for simple cases. It attempts to run cecho and, if that fails (exit status is non-zero, as when the command is not found), runs echo. 
</h4>

```
command -v cecho >/dev/null 2>&1 && CMD="cecho" || CMD="echo"
$CMD "Hello World!"
```

<hr>
Explanation of the command check:

    command -v cecho: This standard POSIX utility attempts to locate the cecho command.
    >/dev/null 2>&1: This redirects both standard output (1) and standard error (2) to /dev/null, suppressing any messages from the check itself.
    The if statement evaluates the exit status of command -v. A status of zero means success (command found), while a non-zero status means failure (command not found). 
