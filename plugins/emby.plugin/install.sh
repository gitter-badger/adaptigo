#!/bin/bash

wget -qO - http://download.opensuse.org/repositories/home:emby/Debian_8.0/Release.key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/emby/Debian_8.0/ /' >> /etc/apt/sources.list.d/emby-server.list
apt-get update
apt-get install mono-runtime mediainfo libsqlite3-dev imagemagick-6.q8 libmagickwand-6.q8-2 libmagickcore-6.q8-2
apt-get install emby-server