# TakeOwnership.sh - Take ownership via chown and chgrp and assign to current user.
#

CurrentUser=$(whoami)
Args="-Rhf"

echo "Current User Is: $CurrentUser"

## TODO: Can also use this:
sudo chown -R $(whoami):$(whoami) $1 # Needs testing.

## TODO: use 'ls | grep' to find entries that are not owned by current user and call chown/chgrp 

# chown -R $(whoami):$(whoami) .config

# chown -Rhf mirrors * && chgrp -Rhf mirrors *

# chown -Rhf $CurrentUser * && chgrp -Rhf $CurrentUser *

# chown $Args $CurrentUser * && chgrp $Args $CurrentUser *

