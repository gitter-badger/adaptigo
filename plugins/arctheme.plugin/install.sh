#!/bin/bash

wget http://download.opensuse.org/repositories/home:Horst3180/Debian_8.0/Release.key
apt-key add - < Release.key 
echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/Debian_8.0/ /' >> /etc/apt/sources.list.d/arc-theme.list 
apt-get update
apt-get install arc-theme
rm Release.key