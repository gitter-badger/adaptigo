#!/bin/bash
apt-add-repository 'apt-add-repositorydeb http://download.videolan.org/pub/debian/stable/ /'
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
aptitude update
apt-get install -y libavcodec-extra libdvdcss2