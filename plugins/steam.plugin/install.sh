#!/bin/bash
export DISPLAY=":0.0" 

if [ `uname -m` = "x86_64" ]; then
		dpkg --add-architecture i386
	else
		echo "i386"
fi
apt-get download steam
gdebi-gtk steam*