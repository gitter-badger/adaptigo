#!/bin/bash

CACHEDIR="/var/cache/fedy/sublimetext"

if [[ "$(uname -m)" = "x86_64" ]]; then
	ARCH="amd64"
else
	ARCH="i386"
fi

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL="http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_$ARCH.deb"
FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg -i $FILE