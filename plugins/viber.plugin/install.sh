#!/bin/bash

if [ `uname -m` = "x86_64" ]; then
   echo expression evaluated as true
   wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
   dpkg -i viber.deb
   apt-get -f install
else
   echo "sorry I can't do that"
fi