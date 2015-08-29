#!/bin/bash

aptitude install -y curl
if [ `uname -m` = "x86_64" ]; then
 
dpkg --add-architecture
# 32-bit stuff here

fi
wget http://download.teamviewer.com/download/teamviewer_i386.deb
dpkg -i teamviewer_i386.deb
apt-get --yes --fix-broken install

