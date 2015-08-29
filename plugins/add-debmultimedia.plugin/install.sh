#!/bin/bash
aptitude install -y  software-properties-common
cp /etc/apt/sources.list /etc/apt/sources.list.backup
apt-add-repository 'deb http://mirror.home-dn.net/debian-multimedia stable main non-free'
aptitude update 
mkdir -p /etc/debi/
touch /etc/debi/sources.touched