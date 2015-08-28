#!/bin/bash

aptitude install -y curl
if (uname -a | grep 'x86_64'); then
 
  # 64-bit stuff here
wget http://download.teamviewer.com/download/teamviewer_amd64.deb
dpkg -i teamviewer_amd64.deb


else
   # 32-bit stuff here
wget http://download.teamviewer.com/download/teamviewer_i386.deb
dpkg -i teamviewer_i386.deb
fi

apt-get --yes --fix-broken install

