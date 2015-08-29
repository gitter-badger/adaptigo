#!/bin/bash
export DISPLAY=":0.0" 

if [ `uname -m` = "x86_64" ]; then
		dpkg --add-architecture i386
	else
		echo "i386"
fi
aptitude update 
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
touch /etc/debi/sources.touched

aptitude update
aptitude install -y gdebi
apt-get download steam
gdebi-gtk steam*