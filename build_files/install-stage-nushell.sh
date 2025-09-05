#!/bin/bash

dnf install --assumeyes nu
printf '/bin/nu\n/usr/bin/nu' >> /etc/shells
