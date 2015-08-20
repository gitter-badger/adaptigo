#!/bin/bash

CACHEDIR="/var/cache/debi/jdk"
aptitude -y insatll java-package
if [[ "$(uname -m)" = "x86_64" ]]; then
    ARCH="x64"
    mkdir -p "$CACHEDIR"
cd "$CACHEDIR"

 wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz

if [[ -f "$FILE" ]]; then
    
else
    exit 1
fi




else
    ARCH="x86"

     wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-i586.tar.gz

fi

## http://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead