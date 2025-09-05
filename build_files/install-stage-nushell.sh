#!/bin/bash

set -ouex pipefail

dnf install --assumeyes nu
printf '/bin/nu\n/usr/bin/nu' >> /etc/shells
