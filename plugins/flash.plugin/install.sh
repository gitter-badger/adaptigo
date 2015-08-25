#!/bin/bash

aptitude install -y  software-properties-common
cp /etc/apt/sources.list /etc/apt/sources.list.backup


grep  '^deb.*debian/ jessie.*main'  /etc/apt/sources.list | while read -r line ; do
    echo "Processing $line"
    apt-add-repository "$line  non-free contrib"

done

grep  '^deb.*jessie.updates.main'  /etc/apt/sources.list | while read -r line ; do
    echo "Processing $line"
    apt-add-repository "$line  non-free contrib"

done


grep  '^deb.http://.*debian/ jessie-updates.*main'  /etc/apt/sources.list | while read -r line ; do
    echo "Processing $line"
    apt-add-repository "$line  non-free contrib"

done
touch /etc/apt/sources.touched

aptitude update
aptitude install -y flashplugin-nonfree