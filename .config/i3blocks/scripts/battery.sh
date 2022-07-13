#!/bin/bash

# get battery info
cap=$(cat /sys/class/power_supply/BAT0/capacity)
stat=$(cat /sys/class/power_supply/BAT0/status)

# emoji's
bolt_icon="\u26A1"
plug_icon="\U1F50C"

# colors
green="#98C379"
yellow="#E5C07B"
red="#E06c75"

short_text=""
long_text=""

# check if charging
if [[ $stat == "Charging" ]]; then
  short_text+="$plug_icon "
  long_text+="$plug_icon "
else
  short_text+="$bolt_icon "
  long_text+="$bolt_icon "
fi

# add battery percentage
short_text+="$cap%"
long_text+="$cap percentage"

# echo long and short text formats
echo -e "$short_text"
echo -e "$long_text"

# echo color based on battery percentage
if [[ $cap -lt 20 ]]; then
  echo "$red"
elif [[ $cap -lt 50 ]]; then
  echo "$yellow"
else
  echo "$green"
fi
