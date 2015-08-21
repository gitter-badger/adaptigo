#!/bin/bash
echo "deb http://ppa.launchpad.net/numix/ppa/ubuntu vivid main" > /etc/apt/sources.list.d/numix.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0F164EEB
aptitude update -y
aptitude install -y  numix-icon-theme numix-icon-theme-circle numix-gtk-theme