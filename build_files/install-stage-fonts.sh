#!/bin/bash

set -eoux pipefail

FILE="/tmp/RobotoMono.zip"
FONTS_FOLDER="/usr/share/fonts"

mkdir -p $FONTS_FOLDER
curl -L -o $FILE "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/RobotoMono.zip"
unzip -o -d $"$FONTS_FOLDER/RobotoMono" $FILE
rm $FILE
