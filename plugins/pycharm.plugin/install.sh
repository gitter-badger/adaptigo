#!/bin/bash

CACHEDIR="/var/cache/debbie/pycharm"


mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL=https://download.jetbrains.com/python/pycharm-community-4.5.3.tar.gz
FILE=ideaIC.tar.gz

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

mkdir -p "/opt/pycharm"
tar -xvf "$FILE" -C "/opt/pycharm"

ln -sf /opt/pycharm/pycharm-community-4.5.3/bin/pycharm.sh /usr/bin/pycharm

xdg-icon-resource install --novendor --size 256 "/opt/pycharm/pycharm-community-4.5.3/bin/pycharm.png" "pycharm"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/pycharm.desktop
[Desktop Entry]
Name=pycharm Idea
Icon=pycharm
Comment=The Most Intelligent python IDE
Exec=/usr/bin/pycharm
Terminal=false
Type=Application
StartupNotify=true
Categories=Deveopment;Java
Keywords=Java;Scala;Groovy;Deveopment
EOF
