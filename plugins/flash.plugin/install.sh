#!/bin/bash

if [ ! -f /etc/apt/sources.list.original ]; then
cp /etc/apt/sources.list /etc/apt/sources.list.original
sed -i 's/main/main non-free contrib/g' /etc/apt/sources.list
fi
aptitude install -y flashplugin-nonfree