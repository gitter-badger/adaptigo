#!/bin/bash
MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  # 64-bit stuff here
  wget http://get.code-industry.net/public/master-pdf-editor-3.3.10_amd64.deb
  dpkg -i master-pdf-editor-3.3.10_amd64.deb
  apt-get --yes --fix-broken install
else
  # 32-bit stuff here
  http://get.code-industry.net/public/master-pdf-editor-3.3.10_i386.deb
  dpkg -i master-pdf-editor-3.3.10_i386.deb
  apt-get --yes --fix-broken install
else
fi

