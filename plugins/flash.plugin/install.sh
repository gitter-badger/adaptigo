#!/bin/bash

if [ ! -f /etc/apt/sources.list.original ]; then
cp /etc/apt/sources.list /etc/apt/sources.list.original
sed -e 's/(debian/ jessie main)/debian/ jessie main non-free contrib/g' /etc/apt/sources.list

fi
aptitude install -y flashplugin-nonfree