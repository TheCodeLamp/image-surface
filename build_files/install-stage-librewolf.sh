#!/bin/bash

set -ouex pipefail

dnf config-manager addrepo --from-repofile=https://repo.librewolf.net/librewolf.repo
dnf install --assumeyes librewolf
