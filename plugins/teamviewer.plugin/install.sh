#!/bin/bash

aptitude install -y curl
<<<<<<< HEAD
if [[ `uname -m` = "x86_64" ]]; then
=======
if [ `uname -m` = "x86_64" ]; then
>>>>>>> b446d78... updated x64 checking as the pervious methods were unreliable on debian
 
  # 64-bit stuff here
wget http://download.teamviewer.com/download/teamviewer_amd64.deb
dpkg -i teamviewer_amd64.deb


else
   # 32-bit stuff here
wget http://download.teamviewer.com/download/teamviewer_i386.deb
dpkg -i teamviewer_i386.deb
fi

apt-get --yes --fix-broken install

