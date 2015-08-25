#!/bin/bash

gsettings reset org.gnome.settings-daemon.plugins.xsettings antialiasing
gsettings reset org.gnome.settings-daemon.plugins.xsettings hinting

rm /etc/debbi/fontconfig.debbi