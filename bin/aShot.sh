#!/bin/bash

if ! adb devices | head -n2 | tail -n1 | grep device; then
    echo "adb not running or connected"
    exit 1
fi


read -p "Enter name: " NAME
read -p "Press [Enter] key to take screenshot..."


cd ~/Dropbox/Back\ Ups/Misc
adb shell screencap -p /sdcard/$NAME-$(date +%m-%d-%Y-%H:%M).png && adb pull /sdcard/$NAME-$(date +%m-%d-%Y-%H:%M).png
