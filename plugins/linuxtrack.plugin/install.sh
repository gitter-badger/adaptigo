#!/bin/bash

CACHEDIR="/var/cache/debi/linuxtrack"

if [[ `uname -m` = "x86_64" ]]; then
	ARCH="64"
else
	ARCH="32"
fi

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL=http://linuxtrack.eu/repositories/universal/linuxtrack-0.99.12-$ARCH.zip
FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi


unzip linuxtrack*
tar xvf linuxtrack*
ln -sf /opt/linuxtrack-0.99.12 /opt/linuxtrack


xdg-icon-resource install --novendor --size 256 "/opt/linuxtrack/share/pixmaps/linuxtrack.svg" "linuxtrack"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/linuxtrack.desktop
[Desktop Entry]
Name=linuxtrack
Icon=linuxtrack
Comment=Head tracking for linux
Exec=/opt/bin/linuxtrack/bin/ltr_gui
Terminal=false
Type=Application
StartupNotify=true
Categories=Games
Keywords=Headtracking;Games
EOF
if [ -f /etc/profile.linuxtrack ]; then
	exit 0
else
cp /etc/profile /etc/profile.linuxtrack
echo "export PATH=${PATH}:/opt/linuxtrack/bin" >> /etc/profile
fi