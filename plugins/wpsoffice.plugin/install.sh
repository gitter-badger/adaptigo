#!/bin/bash
##http://wps-community.org/downloads


aptitude install -y curl
<<<<<<< HEAD
if [[ `uname -m` = "x86_64" ]]; then
=======
if [ `uname -m` = "x86_64" ]; then
>>>>>>> b446d78... updated x64 checking as the pervious methods were unreliable on debian
 
  # 64-bit stuff here
  curl http://kdl.cc.ksosoft.com/wps-community/download/a19/wps-office_9.1.0.4975~a19p1_amd64.deb -o wps-office.deb

else
   # 32-bit stuff here
  curl http://kdl.cc.ksosoft.com/wps-community/download/a19/wps-office_9.1.0.4975~a19p1_i386.deb -o wps-office.deb
fi

dpkg -i wps-office.deb
apt-get --yes --fix-broken install
