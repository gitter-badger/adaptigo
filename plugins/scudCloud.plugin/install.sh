#!/bin/bash
CACHEDIR="/var/cache/fedy/atom"
aptitude install -y  python-dbus python3-pyqt4
mkdir $CACHEDIR
cd $CACHEDIR
wget https://github.com/raelgc/scudcloud/archive/v1.0.57.tar.gz
tar -xvf v1.0.57.tar.gz
cd scudcloud-1.0.57
SOURCE="scudcloud-1.0"
INSTALL="/opt/scudcloud"
mkdir -p $INSTALL/lib
mkdir -p $INSTALL/resources
cp $SOURCE/lib/*.py $INSTALL/lib
cp $SOURCE/resources/* $INSTALL/resources
cp $SOURCE/scudcloud $INSTALL
cp $SOURCE/LICENSE $INSTALL
cp $SOURCE/scudcloud.desktop /usr/share/applications
cp $SOURCE/systray/hicolor/* /usr/share/icons/hicolor/scalable/apps
cp $SOURCE/systray/mono-dark/* /usr/share/icons/mono-dark/scalable/apps
cp $SOURCE/systray/mono-light/* /usr/share/icons/mono-light/scalable/apps
ln -sf $INSTALL/scudcloud /usr/bin/scudcloud
## https://github.com/raelgc/scudcloud