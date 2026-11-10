#!/bin/bash

entries="Lock\nLogout\nSuspend\nReboot\nShutdown"

selected=$(echo -e $entries | wofi --dmenu --width 200 --height 250 --style ~/.config/waybar/style.css --cache-file /dev/null | tr '[:upper:]' '[:lower:]')

case $selected in
    lock)
        hyprlock ;;
    logout)
        hyprctl dispatch exit ;;
    suspend)
        systemctl suspend ;;
    reboot)
        systemctl reboot ;;
    shutdown)
        systemctl poweroff ;;
esac
