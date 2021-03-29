#!/bin/sh

BATFILE=`/usr/bin/acpi | /usr/bin/grep 'Battery 0' | /usr/bin/awk '{print int($4)}'`
export DISPLAY=:0


if [ $BATFILE -le 20 ] 
then
  sudo -u rohith DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -u critical "Battery Low: ""$BATFILE""%"
fi


