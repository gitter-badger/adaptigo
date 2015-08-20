#!/bin/bash

echo "to install cd in to CrashPlan-install run ./uninstall in the Terminal" > guide.txt
URL="https://download.code42.com/installs/linux/install/CrashPlan/CrashPlan_4.3.0_Linux.tgz"
FILE="CrashPlan_4.3.0_Linux.tgz"

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

#dir=`mktemp -d` && cd $dir
tar xvf "$FILE"
export DISPLAY=":0.0" 

xterm -e gedit guide.txt
xterm -e bash



rm /usr/share/applications/CrashPlan.desktop
