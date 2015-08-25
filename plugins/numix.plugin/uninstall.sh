#!/bin/bash

aptitude -y purge numix-icon-theme numix-icon-theme-circle numix-gtk-theme
rm /etc/apt/sources.list.d/numix.list

aptitude update -y