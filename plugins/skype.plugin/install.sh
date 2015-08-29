#!/bin/bash

CACHEDIR="/var/cache/fedy/skype"

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL="http://www.skype.com/go/getskype-linux-deb-32"
FILE="skype-debian.deb"

wget -c "$URL" -O "$FILE"

if [ ! -f "$FILE" ]; then
	exit 1
fi

if [ `uname -m` = "x86_64" ]; then
		dpkg --add-architecture i386
	else
		echo "i386"
fi

dpkg -i install $FILE
apt-get --yes --fix-broken install

#aptitude install -y libqt4-dbus libqt4-network libqt4-xml libqtcore4 libqtgui4 libqtwebkit4 libxss1 libxv1
