#!/bin/env bash

# shellcheck source=/dev/null

## TODO: Create code to enable IPv6 also.
#	 Needs CASE statement and/or GetOpts


### Configuration ###

ConfigFile="/etc/sysctl.d/99-disable-ipv6.conf"
ProcFile="/proc/sys/net/ipv6/conf/all/disable_ipv6"


### Functions ###

function CreateConfig() {
# Create config file
	# sudo bash -c 'cat > /etc/sysctl.d/99-disable-ipv6.conf << 'EOF'
	sudo bash -c 'cat > "$ConfigFile" << 'EOF'
	net.ipv6.conf.all.disable_ipv6 = 1
	net.ipv6.conf.default.disable_ipv6 = 1
	net.ipv6.conf.lo.disable_ipv6 = 1
	EOF'
}

function DeleteConfig() {
	# sudo rm -i /etc/sysctl.d/99-disable-ipv6.conf
	sudo rm -i "$ConfigFile"
}

function ApplyConfig() {
# Apply configuration without rebooting
	echo "Applying Configuration..."
	sudo sysctl --system
}


function VerifyConfig() {
# Verify IPv6 is disabled
	echo "Confirming IPv6 Status: "
	echo "   (a value of 1 means it is disabled): "
	echo "   (a value of 0 means it is enabled): "
	# cat /proc/sys/net/ipv6/conf/all/disable_ipv6
	cat "$ProcFile"
}

### Main Program ###

CreateConfig
# DeleteConfig

ApplyConfig
VerifyConfig

