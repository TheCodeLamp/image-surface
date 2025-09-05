#!/bin/bash

set -ouex pipefail

dnf remove --assumeyes \
firefox \ # We install librewolf as a replacement
