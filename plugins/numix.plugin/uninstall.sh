#!/bin/bash


aptitide -y purge numix-icon-theme numix-icon-theme-circle numix-gtk-theme
rm /etc/apt/sources.list.d/numix.list
aptitide update -y