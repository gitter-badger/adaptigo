#!/bin/bash

CACHEDIR="/var/cache/fedy/sublimetext"

if [[ "$(uname -m)" = "x86_64" ]]; then
	ARCH="x64"
else
	ARCH="x32"
fi

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

URL="http://c758482.r82.cf2.rackcdn.com/sublime_text_3_build_3083_${ARCH}.tar.bz2"
FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

tar -xjf "$FILE"

if [[ ! -d "sublime_text_3" ]]; then
	exit 1
fi

rm -rf "/opt/sublime_text_3/"
cp -af "$CACHEDIR/sublime_text_3" "/opt/"

for dir in /opt/sublime_text_3/Icon/*; do
    size="${dir##*/}"
    xdg-icon-resource install --novendor --size "${size/x*}" "$dir/sublime-text.png" "sublime-text"
done

gtk-update-icon-cache -f -t /usr/share/icons/hicolor

ln -sf "/opt/sublime_text_3/sublime_text" "/usr/bin/subl"

cat <<EOF | tee /usr/share/applications/sublime-text-3.desktop
[Desktop Entry]
Name=Sublime Text 3
GenericName=Text Editor
Icon=sublime-text
Comment=Sophisticated text editor \for code, markup and prose
Exec=subl %F
MimeType=text/plain;
Terminal=false
Type=Application
StartupNotify=true
Categories=Development;Utility;TextEditor;
Keywords=Text;Editor;
EOF
