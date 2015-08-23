#!/bin/bash

CACHEDIR="/var/cache/debbie/intellij"


mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL=https://download.jetbrains.com/idea/ideaIC-14.1.4.tar.gz
FILE=ideaIC.tar.gz

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

mkdir -p "/opt/intellij"
tar -xbf "$FILE" -C "/opt/intellij"

ln -sf /opt/intellij/idea-IC-141.1532.4/bin/idea.sh /usr/bin/intellij

xdg-icon-resource install --novendor --size 256 "/opt/intellij/idea-IC-141.1532.4/bin/idea.png" "intellij"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/intellij.desktops
[Desktop Entry]
Name=intellij Idea
Icon=intellij
Comment=The Most Intelligent Java IDE
Exec=intellij
Terminal=false
Type=Application
StartupNotify=true
Categories=Deveopment;Java
Keywords=Java;Scala;Groovy;Deveopment
EOF
