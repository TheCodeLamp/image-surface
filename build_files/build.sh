#!/bin/bash

set -oue pipefail

# Update
echo "::group:: Update"
/ctx/main-repo/build_files/update-stage.sh
echo "::endgroup::"

# Remove packages
echo "::group:: Remove packages"
/ctx/main-repo/build_files/remove-packages.sh
echo "::endgroup::"

# Install Packages

## Install Mullvad
echo "::group:: Install Mullvad"
/ctx/main-repo/build_files/install-stage-mullvad.sh
echo "::endgroup::"

## Install Megasync
echo "::group:: Install Megasync"
/ctx/main-repo/build_files/install-stage-megasync.sh
echo "::endgroup::"

## Install Nushell
echo "::group:: Install Nushell"
/ctx/main-repo/build_files/install-stage-nushell.sh
echo "::endgroup::"

## Install LibreWolf
echo "::group:: Install LibreWolf"
/ctx/main-repo/build_files/install-stage-librewolf.sh
echo "::endgroup::"

## Install FirefoxPWA
echo "::group:: Install FirefoxPWA"
/ctx/main-repo/build_files/install-stage-PWAsForFirefox.sh
echo "::endgroup::"

## Install Misc
echo "::group:: Install Misc"
/ctx/main-repo/build_files/install-stage-misc.sh
echo "::endgroup::"

## Install Fonts
echo "::group:: Install Fonts"
/ctx/main-repo/build_files/install-stage-fonts.sh
echo "::endgroup::"

# Generate initramfs
echo "::group:: Generate initramfs"
/ctx/main-repo/build_files/generate-initramfs.sh
echo "::endgroup::"

# Cleanup
echo "::group:: Cleanup"
/ctx/main-repo/build_files/clean.sh
echo "::endgroup::"

