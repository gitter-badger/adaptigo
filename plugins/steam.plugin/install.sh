#!/bin/bash
<<<<<<< HEAD
if [[ `uname -m` = "x86_64" ]]; then
=======
if [ `uname -m` = "x86_64" ]; then
>>>>>>> b446d78... updated x64 checking as the pervious methods were unreliable on debian
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
aptitude install -y steam

