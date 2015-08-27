#!/bin/bash

wget https://launchpad.net/~peterlevi/+archive/ppa/+files/variety_0.5.3_all.deb
dpkg --install variety_0.5.3_all.deb
apt-get --yes --fix-broken install