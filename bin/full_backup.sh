#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ $# -eq 0 ]
  then
    echo "please specify a backup path"
fi

rsync -aAXv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/amerenda/.local/share/Steam/*"} / "$1"
