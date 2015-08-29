#!/bin/bash

CACHEDIR="/var/cache/debi/jdk"
mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

<<<<<<< HEAD
if [[ `uname -m` = "x86_64" ]]; then
=======
if [ `uname -m` = "x86_64" ]; then
>>>>>>> b446d78... updated x64 checking as the pervious methods were unreliable on debian

	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz
	mkdir -p /opt/jdk
	tar xvf jdk-8u60-linux-x64.tar.gz -C /opt/jdk/

else
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-i586.tar.gz
	mkdir -p /opt/jdk
	tar xvf jdk-8u60-linux-i586.tar.gz -C /opt/jdk/
fi


update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_60//bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_60/bin/javac 100


## http://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead
##https://www.digitalocean.com/community/tutorials/how-to-manually-install-oracle-java-on-a-debian-or-ubuntu-vps