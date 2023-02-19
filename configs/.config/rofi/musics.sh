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
  mpc play $1
}

get_folder_name(){
  echo "$1" | cut -d '/' -f 1
}

run_rofi(){
  current="$(mpc current)"
  # Try get folder name to remove from the song 
  folder="$(get_folder_name $current)"
  # Format and add music number in line
  playlist="$(mpc playlist | sed "s/^$folder\///" | sed "s/\....$//" | nl -w2 -s '. ' )"
  selected="$(echo "$playlist" | rofi_cmd )"
  number="$(echo "$selected" | cut -d '.' -f 1 | sed "s/ //")"
  mpc play "$number"
}
run_rofi

