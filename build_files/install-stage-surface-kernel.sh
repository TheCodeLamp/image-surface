#!/bin/bash

set -eoux pipefail

export DRACUT_NO_XATTR=1
dnf config-manager addrepo --assumeyes --from-repofile=https://pkg.surfacelinux.com/fedora/linux-surface.repo
dnf swap --assumeyes --allowerasing kernel-core kernel-surface
dnf swap --assumeyes --allowerasing libwacom libwacom-surface
dnf swap --assumeyes --allowerasing libwacom-data libwacom-surface-data
dnf install --assumeyes iptsd
dnf install --assumeyes surface-secureboot
