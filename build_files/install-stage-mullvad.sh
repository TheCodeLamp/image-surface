#!/bin/bash

set -ouex pipefail

dnf config-manager addrepo --from-repofile=https://repository.mullvad.net/rpm/stable/mullvad.repo
mkdir -p '/var/opt/Mullvad VPN'
dnf install --assumeyes mullvad-vpn
