#!/bin/bash

CHOICE=$(kdialog --title "Intel Undervolt Profile" \
  --menu "Select power profile:" \
  4 "Anemia" \
  1 "Low power" \
  2 "Balanced" \
  3 "Performance")

[ -z "$CHOICE" ] && exit 0

pkexec /usr/local/bin/powerlimit.sh "$CHOICE"
