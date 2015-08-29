#!/bin/bash
aptitude install -y  software-properties-common
cp /etc/apt/sources.list /etc/apt/sources.list.backup

if ]; then
	#statements
fi
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

mkdir -p /etc/debi/
touch /etc/debi/sources.touched
apt-add-repository 'deb http://download.videolan.org/pub/debian/stable/ /'
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
aptitude update
apt-get install -y libavcodec-extra libdvdcss2