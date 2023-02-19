#!/usr/bin/env bash

# Needed rofi-greenclip package to work
dir="$HOME/.config/rofi/launchers/type-6"

theme='style-7'
rofi \
  -modi "clipboard:greenclip print" -show clipboard\
  -theme ${dir}/${theme}.rasi
