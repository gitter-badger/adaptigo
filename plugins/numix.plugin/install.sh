#!/bin/bash
echo "deb http://ppa.launchpad.net/numix/ppa/ubuntu vivid main" > /etc/apt/sources.list.d/numix.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0F164EEB
aptitude install -y  numix-icon-theme numix-gtk-theme numix-folders  numix-icon-theme-bevel  numix-plank-theme  