#!/bin/bash
set -e

CONFIG="/etc/intel-undervolt.conf"

case "$1" in
  1)
    cat > "$CONFIG" <<EOF
undervolt 0 'CPU' 0
undervolt 1 'GPU' 0
undervolt 2 'CPU Cache' 0

power package 15 13

interval 5000
daemon undervolt:once
daemon power
daemon tjoffset
EOF
    ;;
  2)  
    cat > "$CONFIG" <<EOF
undervolt 0 'CPU' 0
undervolt 1 'GPU' 0
undervolt 2 'CPU Cache' 0

power package 55 25

interval 5000   
daemon undervolt:once
daemon power   
daemon tjoffset
EOF   
    ;;
  3)  
    cat > "$CONFIG" <<EOF
undervolt 0 'CPU' 0
undervolt 1 'GPU' 0
undervolt 2 'CPU Cache' 0

power package 70 45

interval 5000   
daemon undervolt:once
daemon power   
daemon tjoffset
EOF   
    ;;
  4)  
    cat > "$CONFIG" <<EOF
undervolt 0 'CPU' 0
undervolt 1 'GPU' 0
undervolt 2 'CPU Cache' 0

power package 10 8

interval 5000
daemon undervolt:once
daemon power
daemon tjoffset
EOF
    ;;
  *)
    exit 1
    ;;
esac

intel-undervolt apply

kdialog --passivepopup "Intel undervolt profile applied" 2
