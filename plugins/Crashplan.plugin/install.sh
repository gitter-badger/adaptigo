#!/bin/bash

CACHEDIR="/var/cache/debi/CrashPlan/"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"
echo "to install run ./install" > guide.txt
URL="https://download.code42.com/installs/linux/install/CrashPlan/CrashPlan_4.3.0_Linux.tgz"
FILE="CrashPlan_4.3.0_Linux.tgz"

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

#dir=`mktemp -d` && cd $dir
tar xvf "$FILE"
export DISPLAY=":0.0" 
xterm -e "$CACHEDIR"/CrashPlan-install/install.sh
gnome-terminal -e gedit guide.txt && bash 
xdg-icon-resource install --novendor --size 128 "/usr/local/crashplan/skin/icon_app_128x128.png" "CrashPlan"
gtk-update-icon-cache -f -t /usr/share/icons/hicolor

cat <<EOF | tee /usr/share/applications/CrashPlan.desktop
[Desktop Entry]
Name=CrashPlan
Icon=CrashPlan
Comment=Backup your pc
Exec=CrashPlanDesktop
Terminal=false
Type=Application
StartupNotify=true
Categories=
Keywords=Backup
EOF
