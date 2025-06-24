#!/bin/sh

chosen=$(printf "Suspend\nHibernate\nPower Off\nReboot\nLogout" | rofi -dmenu -p "Power Menu" -theme dracula.rasi)

case "$chosen" in
    "Suspend") 
        pkexec systemctl suspend ;;
    "Hibernate") 
        pkexec systemctl hibernate ;;
    "Power Off") 
        pkexec poweroff ;;
    "Reboot") 
        pkexec reboot ;;
    "Logout") 
        i3-msg exit ;;
    *) 
        exit 1 ;;
esac
