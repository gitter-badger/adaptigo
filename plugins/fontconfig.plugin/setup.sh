#!/bin/bash

gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing "rgba"
gsettings set org.gnome.settings-daemon.plugins.xsettings hinting "slight"

mkdir -P /etc/debbi/
touch /etc/debbi/fontconfig.debbi