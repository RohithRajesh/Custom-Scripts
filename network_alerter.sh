#!/bin/sh


(! ping -c1 google.com 2>&1) && ( sudo -u rohith DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -u critical "No Internet" ) && echo "True" 
