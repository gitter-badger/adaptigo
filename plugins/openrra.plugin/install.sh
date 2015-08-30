#!/bin/bash

CACHEDIR="/var/cache/adaptigo/openra"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL="https://github.com/OpenRA/OpenRA/releases/download/release-20150614/openra_release.20150614_all.deb"
FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [ ! -f "$FILE" ]; then
	exit 1
fi

dpkg -i $FILE
apt-get -f install

xdg-icon-resource install --novendor --size "scalable" "/opt/android-studio/bin/androidstudio.svg" "androidstudio"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/openra.desktop
[Desktop Entry]
Name=OpenRA
Icon=openra
Comment=Real Time Strategy
Exec=/usr/games/openra 
Terminal=false
Type=Application
StartupNotify=true
Categories=GAMES;
Keywords=RealTimeStrategy
EOF