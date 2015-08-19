#!/bin/bash
aptitude install -y apt-transport-https
echo "deb http://download.videolan.org/pub/debian/stable/ /"> /etc/apt-sources.d/videolan.list
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
aptitude update
apt-get install -y libavcodec-extra libdvdcss2