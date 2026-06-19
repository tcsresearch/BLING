#!/bin/env bash

## Define Variables ##
Prog="dnf"
FedoraReleaseVer="44"

BaseURL_Free="https://download1.rpmfusion.org/free/fedora"
BaseURL_NonFree="https://download1.rpmfusion.org/nonfree/fedora"
URL="https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-44.noarch.rpm"
Package_BaseName_Free="rpmfusion-free-release"
Package_BaseName_NonFree="rpmfusion-nonfree-release"

# dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-44.noarch.rpm

### Main Program ##
## TODO: Perform 'rpm -q rpmfusion-free-release' and 'rpmfusion-nonfree-release'
$prog install $BaseURL_Free/$Package_BaseName_Free-$FedoraReleaseVer.noarch.rpm
$prog install $BaseURL_NonFree/$Package_BaseName_NonFree-$FedoraReleaseVer.noarch.rpm

