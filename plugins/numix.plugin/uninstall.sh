#!/bin/bash


aptitide -y purge numix-icon-theme numix-gtk-theme numix-icon-theme-bevel 
rm /etc/apt/sources.list.d/numix.list
aptitide update -y