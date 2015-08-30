#!/bin/bash
#remove old key
apt-key del 0C2E03A0
 
echo "deb https://pkg.tox.chat/ nightly main" > /etc/apt/sources.list.d/tox.list
wget -qO - https://pkg.tox.chat/pubkey.gpg | sudo apt-key add -
aptitude update
aptitude install -y qtox