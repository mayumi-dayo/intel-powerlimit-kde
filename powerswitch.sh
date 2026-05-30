#!/bin/bash

CHOICE=$(kdialog --title "Intel PL Profile" \
  --menu "Select power profile:" \
  5 "Anemic 3w" \
  4 "6w" \
  1 "12w" \
  2 "15w" \
  3 "20w" \
  6 "ULTRA")

[ -z "$CHOICE" ] && exit 0

pkexec /usr/local/bin/powerlimit.sh "$CHOICE"
