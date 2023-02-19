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

##Options
plex="Plex"
syntching="Syntching"
run_rofi(){
  echo -e "$plex\n$syntching" | run_cmd
}


chosen="$(run_rofi)"
case ${chosen} in
  $plex)
    xdg-open "http://localhost:32400"  ;;
  $syntching)
    xdg-open "http://127.0.0.1:8384/";;
esac
