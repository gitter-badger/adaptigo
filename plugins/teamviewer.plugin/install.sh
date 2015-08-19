#!/bin/bash

CACHEDIR="/var/cache/fedy/teamviewer"

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

curl http://download.teamviewer.com/download/teamviewer_i386.deb -o teamviewer.deb


wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg --add-architecture i386
dpkg -i install teamviewer.deb
apt-get --yes --fix-broken install
