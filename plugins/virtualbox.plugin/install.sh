#!/bin/bash

echo 'deb http://download.virtualbox.org/virtualbox/debian vivid contrib' > /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get update
sudo aptitude install -y virtualbox-5.0