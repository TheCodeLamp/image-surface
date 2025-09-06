#!/bin/bash

set -eoux pipefail

mkdir -p /usr/local/share/fonts
curl -L -o /tmp/RobotoMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/RobotoMono.zip"
unzip -o -d /usr/local/share/fonts/RobotoMono /tmp/RobotoMono.zip
rm /tmp/RobotoMono.zip
