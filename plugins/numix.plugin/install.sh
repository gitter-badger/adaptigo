#!/bin/bash
echo "deb http://ppa.launchpad.net/numix/ppa/ubuntu vivid main" > /etc/apt/sources.list.d/numix.list
gpg --export -a 0F164EEB | sudo apt-key add -
aptitude install -y  numix-icon-theme numix-gtk-theme numix-folders  numix-icon-theme-bevel  numix-plank-theme  