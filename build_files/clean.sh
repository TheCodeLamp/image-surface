#!/bin/bash

set -ouex pipefail

dnf upgrade --assumeyes
dnf autoremove --assumeyes
dnf clean all
