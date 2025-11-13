#!/bin/bash

set -oue pipefail

cd /ctx

# Update
echo "::group:: Update"
./main-repo/build_files/update-stage.sh
echo "::endgroup::"

# Remove packages
echo "::group:: Remove packages"
./main-repo/build_files/remove-packages.sh
echo "::endgroup::"

# Enable RPM Fusion
echo "::group:: Enable RPM Fusion"
./main-repo/build_files/enable-rpmfusion.sh
echo "::endgroup::"

# Install Kernel
echo "::group:: Install Surface Kernel"
./install-stage-surface-kernel.sh
echo "::endgroup::"

# Install Main Image
cd /ctx/main-repo/build_files
./install-stage.sh
cd /ctx

# Generate initramfs
echo "::group:: Generate initramfs"
./generate-initramfs.sh
echo "::endgroup::"

# Cleanup
echo "::group:: Cleanup"
./main-repo/build_files/cleanup-stage.sh
echo "::endgroup::"

