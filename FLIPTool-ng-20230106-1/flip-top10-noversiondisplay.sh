echo "Top 10 Largest Installed Packages:"
echo "All sizes are shown in megabytes (MB)."

rpm -qa --queryformat '%10{size} - %-25{name} \t  %{os} \n' | sort -rh | head -25 | awk '{print $1/1024/1024, $2, $3}'
