#!/bin/bash

CACHEDIR="/var/cache/debbie/netbeans"


mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL=http://download.netbeans.org/netbeans/8.0.2/final/bundles/netbeans-8.0.2-linux.sh

wget -c "$URL"
if [[ ! -f "$FILE" ]]; then
	exit 1
fi
export DISPLAY=":0.0" 
chmod +x netbeans-8.0.2-linux.sh
sh netbeans-8.0.2-linux.sh
