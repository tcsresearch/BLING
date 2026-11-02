#!/bin/bash
# shellcheck source=/dev/null

KEU_Version="26.11"

# NewKVer="$1"

# NewKVer="7.3.0-363.vanilla.fc44.x86_64"
# NewKVer="7.3.1-300.vanilla.fc44.x86_64"

NewKVer="$(rpm -q kernel-core | sort -V | tail -n 1)"

function DisplayBanner() {
	echo "Kexec Utility. - Version $KEU_Version."
	echo "Current Kernel Version: "$(uname -r)""
	echo "New Kernel Version: $NewKVer"
}


function GetNewKVer() {
	echo "Depricated function."
	# rpm -q kernel-core | sort -V | tail -n 1
}

function LoadNewKernel() {
# Load the new kernel into memory.
	sudo kexec -l /boot/vmlinuz-"$NewKVer" \
  	--initrd=/boot/initramfs-"$NewKVer".img \
  	--reuse-cmdline
}

function TriggerReboot() {
# Trigger the reboot.
	sudo systemctl kexec
}

function MakeDefault() {
# To make Kexec the new default behavior, run:
	sudo ln -sf /usr/lib/systemd/system/kexec.target /etc/systemd/system/reboot.target
}

function UnmakeDefault() {
# To reverse the new default behavior, run:
	rm /etc/systemd/system/reboot.target	

}

### Main Program ###

 DisplayBanner
 # LoadNewKernel
 # TriggerReboot
 # MakeDefault
 # UnmakeDefault

