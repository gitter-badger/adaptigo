#!/bin/bash
aptitude install -y  software-properties-common
cp /etc/apt/sources.list /etc/apt/sources.list.backup
touch /apt/sources.debmuli

apt-add-repository "deb http://mirror.home-dn.net/debian-multimedia stable main'

