#!/bin/bash

set -ouex pipefail

# Update
echo "::group:: Update"
/ctx/update-stage.sh
echo "::endgroup::"

# Install Packages

## Install Mullvad
echo "::group:: Install Mullvad"
/ctx/install-stage-mullvad.sh
echo "::endgroup::"

## Install Megasync
echo "::group:: Install Megasync"
/ctx/install-stage-megasync.sh
echo "::endgroup::"

## Install Nushell
echo "::group:: Install Nushell"
/ctx/install-stage-nushell.sh
echo "::endgroup::"

## Install Misc
echo "::group:: Install Misc"
/ctx/install-stage-misc.sh
echo "::endgroup::"

# Cleanup
echo "::group:: Cleanup"
/ctx/clean.sh
echo "::endgroup::"

