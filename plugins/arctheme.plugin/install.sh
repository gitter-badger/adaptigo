#!/bin/bash

wget http://download.opensuse.org/repositories/home:Horst3180/Debian_8.0/Release.key
apt-key add - < Release.key 
apt-add-repository "deb http://download.opensuse.org/repositories/home:/Horst3180/Debian_8.0/ /"
apt-get update
apt-get install -y arc-theme
rm Release.key