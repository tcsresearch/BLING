# Read in our configuration
if [ -z "${BOOTUP:-}" ]; then
    if [ -f /etc/sysconfig/init ]; then
        . /etc/sysconfig/init
    else
        # verbose ->> very (very!) old bootup look (prior to RHL-6.0?)
        # color ->> default bootup look
        # other ->> default bootup look without ANSI colors or positioning
        BOOTUP=color
        # Column to start "[  OK  ]" label in:
        RES_COL=60
        # terminal sequence to move to that column:
        MOVE_TO_COL="echo -en \\033[${RES_COL}G"
        # Terminal sequence to set color to a 'success' (bright green):
        SETCOLOR_SUCCESS="echo -en \\033[1;36m"
        # Terminal sequence to set color to a 'failure' (bright red):
        SETCOLOR_FAILURE="echo -en \\033[1;31m"
        # Terminal sequence to set color to a 'warning' (bright yellow):
        SETCOLOR_WARNING="echo -en \\033[1;33m"
        # Terminal sequence to reset to the default color:
        SETCOLOR_NORMAL="echo -en \\033[0;39m"

        # Verbosity of logging:
        LOGLEVEL=1
    fi
    if [ "$CONSOLETYPE" = "serial" ]; then
        BOOTUP=serial
        MOVE_TO_COL=
        SETCOLOR_SUCCESS=
        SETCOLOR_FAILURE=
        SETCOLOR_WARNING=
        SETCOLOR_NORMAL=
    fi
