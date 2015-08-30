#!/bin/bash

URL=https://launchpad.net/~ravefinity-project/+archive/ubuntu/ppa/+files/radiance-colors_15.04.3%7Ewily%7ENoobsLab.com_all.deb
FILE=radiance-colors.deb

wget -c "$URL" -O "$FILE"

if [ ! -f "$FILE" ]; then
	exit 1
fi
 
dpkg -i radiance-colors.deb
apt-get -f install