#!/bin/bash

CACHEDIR="/var/cache/fedy/teamviewer"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi


apt-get --yes --fix-broken install
if [[uname -a | grep 'x86_64']];then
 
  	wget http://download.teamviewer.com/download/teamviewer_i386.deb
	dpkg -i install teamviewer_i386.deb
	else

  wget http://download.teamviewer.com/download/teamviewer_amd64.deb
  dpkg -i install teamviewer_amd64.deb

fi


