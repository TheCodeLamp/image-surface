#!/bin/bash

set -ouex pipefail

# ------ Pre-Install ------

dnf upgrade --assumeyes

# ------ Install Packages ------

# Install Misc Files

dnf install --assumeyes alacritty helix snapper wl-clipboard zoxide

# Install Mullvad

dnf config-manager addrepo --from-repofile=https://repository.mullvad.net/rpm/stable/mullvad.repo
mkdir -p '/var/opt/Mullvad VPN'
dnf install --assumeyes mullvad-vpn

# Install nushell

dnf install --assumeyes nu
printf '/bin/nu\n/usr/bin/nu' >> /etc/shells

# ------ Post-Install ------

dnf upgrade --assumeyes
dnf autoremove --assumeyes
dnf clean all
