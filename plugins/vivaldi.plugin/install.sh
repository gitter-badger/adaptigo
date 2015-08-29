#!/bin/bash
aptitude install -y curl
if [ `uname -m` = "x86_64" ]; then
 
  # 64-bit stuff here
    curl https://vivaldi.com/download/vivaldi_TP4.1.0.219.50-1_amd64.deb -o vivaldi.deb

else
   # 32-bit stuff here
   curl https://vivaldi.com/download/vivaldi_TP4.1.0.219.50-1_i386.deb -o  vivaldi.deb

fi

dpkg -i vivaldi.deb
apt-get --yes --fix-broken install
