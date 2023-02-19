#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5

dir="$HOME/.config/rofi/launchers/type-6"
theme='style-7'


rofi_cmd(){
  rofi \
      -dmenu \
      -theme ${dir}/${theme}.rasi
}

#Run

mpc_play(){
  mpc clear && mpc add "$1" && mpc play
}

run_rofi(){
  selectedPlaylist="$(ls -w 1 ~/Music | rofi_cmd )"
  if [ "$selectedPlaylist" != "" ]; then
    mpc_play "$selectedPlaylist"
  fi
}
run_rofi

