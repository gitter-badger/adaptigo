
#!/bin/bash
aptitude install -y curl
CACHEDIR="/var/cache/debi/Telegram";

mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

if [ `uname -m` = "x86_64" ]; then
  # 64-bit stuff here
  cd /opt
  	wget https://tdesktop.com/linux -O linux.tar.gz 

else
   # 32-bit stuff here
    cd /opt
	wget https://tdesktop.com/linux32 -O linux.tar.gz


fi
tar xvf linux.tar.gz

cat <<EOF | tee /usr/share/applications/Telegram.desktop
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Name=Telegram Desktop
Comment=Official desktop version of Telegram messaging app
Exec=/opt/Telegram/Telegram -- %u
Icon=/home/dthomas/.TelegramDesktop/tdata/icon.png
Terminal=false
Type=Application
Categories=Network;
MimeType=application/x-xdg-protocol-tg;x-scheme-handler/tg;
X-Desktop-File-Install-Version=0.22
EOF

