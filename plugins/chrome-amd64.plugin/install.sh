#!/bin/bash

CACHEDIR="/var/cache/fedy/skype"

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL="https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
"
FILE="google-chrome-stable_current_i386"

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg -i install $FILE
apt-get --yes --fix-broken install
