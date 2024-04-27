## TODO: Fix queryformartargs - not working

corecmd="rpm -qa"
queryformatargs="--queryformat '%10{size} - %-25{name} \t %{version}\n' "
queryformatargs2=" '%10{size} - %-25{name} \t %{version}\n'"
queryformatargs3=" '%10{size} - %-25{name} \t' "

# The queryformatargs are broken down individually here:
querysize=" %10{size}"
queryname="%-25{name}"
queryversion="%{version}"

sortargs=" -rh" # initial options: -n / -rh

### $corecmd $queryformatargs | sort $sortargs

### FIXME: The following line fails to display the package size (displays as 0):
# $corecmd --queryformat '%10{size} - %-25{name} \t %{version}\n' | sort $sortargs

### Test
$corecmd --queryformat '%10{size} - %-25{name} \t %{version}\n'  | sort $sortargs

### rpm -qa --queryformat '%10{size} - %-25{name} \t %{version}\n' | sort -n
### rpm -qa --queryformat '%10{size} - %-25{name} \t %{version}\n' | sort -rh

