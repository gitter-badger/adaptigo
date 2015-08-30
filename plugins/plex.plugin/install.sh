#!/bin/bash

CACHEDIR="/var/cache/adaptigo/plex"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"
if [ `uname -m` = "x86_64" ]; then
	ARCH="amd64"
	URL="https://downloads.plex.tv/plex-media-server/0.9.12.11.1406-8403350/plexmediaserver_0.9.12.11.1406-8403350_$ARCH.deb"

	

else
	ARCH="i386"
	URL="https://downloads.plex.tv/plex-media-server/0.9.12.11.1406-8403350/plexmediaserver_0.9.12.11.1406-8403350_$ARCH.deb"

fi

FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dpkg -i $FILE
apt-get -f install