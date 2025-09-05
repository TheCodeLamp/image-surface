#!/bin/bash

set -ouex pipefail

# Clean dnf
dnf upgrade --assumeyes
dnf autoremove --assumeyes
dnf clean all

# Remove tmp files and everything in dirs that make bootc unhappy
rm -rf /tmp/* || true
rm -rf /usr/etc
rm -rf /boot && mkdir /boot

# Preserve cache mounts
find /var/* -maxdepth 0 -type d \! -name cache \! -name log -exec rm -rf {} \;
find /var/cache/* -maxdepth 0 -type d \! -name libdnf5 -exec rm -rf {} \;

# Make sure /var/tmp is properly created
mkdir -p /var/tmp
chmod -R 1777 /var/tmp
