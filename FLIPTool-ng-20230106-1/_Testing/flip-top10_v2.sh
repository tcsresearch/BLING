# TODO: Use variables.
echo "Top 10 Largest Installed Packages:"
echo "All sizes are shown in megabytes (MB)."
###
### Define Variables ###
MainCMD="rpm -qa"
SortArgs="-rh"
HeadArgs="-25"
#
rpm -qa --queryformat '%10{size} - %-25{name} \t %{version} \t %{os} \n' | sort -rh | head -25 | awk '{print $1/1024/1024, $2, $3, $4}'
