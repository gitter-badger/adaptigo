#!/bin/bash

cp /etc/apt/sources.list /etc/apt/sources.list.backup
apt-add-repository -s 'deb http://mirror.home-dn.net/debian-multimedia stable main non-free'
aptitude update 
mkdir -p /etc/debi/
touch /etc/debi/sources.touched