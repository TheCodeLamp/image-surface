#!/bin/bash

set -ouex pipefail

FILE="/tmp/mullvad.rpm"
curl -L -o $FILE https://mullvad.net/en/download/app/rpm/latest
mkdir -p '/var/opt/Mullvad VPN'
dnf install --assumeyes $FILE
rm $FILE
