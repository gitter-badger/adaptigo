#!/bin/bash

CACHEDIR="/var/cache/fedy/sublimetext"

if (uname -a | grep 'x86_64'); then
	ARCH="amd64"
	mkdir -p "$CACHEDIR"
	cd "$CACHEDIR"

	URL="https://github.com/atom/atom/releases/download/v1.0.7/atom-amd64.deb"
	FILE=${URL##*/}

	wget -c "$URL" -O "$FILE"

	if [[ ! -f "$FILE" ]]; then
		exit 1
	fi

	dpkg -i $FILE


else
	ARCH="i386"
fi

