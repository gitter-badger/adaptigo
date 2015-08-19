#!/bin/bash

CACHEDIR="/var/cache/fedy/teamviewer"

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL="http://download.teamviewer.com/download/"
FILE="teamviewer_i386.deb"

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg --add-architecture i386
dpkg -i install $FILE
apt-get --yes --fix-broken install
