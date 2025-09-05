#!/bin/bash

dnf upgrade --assumeyes
dnf autoremove --assumeyes
dnf clean all
