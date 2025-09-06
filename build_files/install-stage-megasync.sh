#!/bin/bash

set -ouex pipefail

source /etc/os-release

FILE="/tmp/megasync.rpm"
curl -L -o $FILE "https://mega.nz/linux/repo/Fedora_$VERSION_ID/x86_64/megasync-Fedora_$VERSION_ID.x86_64.rpm"
dnf install --assumeyes $FILE
rm $FILE

FILE="/tmp/megasync-dolphin.rpm"
curl -L -o $FILE "https://mega.nz/linux/repo/Fedora_$VERSION_ID/x86_64/dolphin-megasync-Fedora_$VERSION_ID.x86_64.rpm"
dnf install --assumeyes $FILE
rm $FILE
