#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

if (uname -a | grep 'x86_64'); then
 
	wget https://launchpad.net/ubuntu/+archive/primary/+files/libgcrypt11_1.5.3-2ubuntu4.2_amd64.deb
	dpkg -i libgcrypt11_1.5.4-3_amd64.deb

else
	wget https://launchpad.net/ubuntu/+archive/primary/+files/libgcrypt11_1.5.3-2ubuntu4.2_i386.deb
	dpkg -i libgcrypt11_1.5.4-3_i386.deb
fi




# 1. Add the Spotify repository signing key to be able to verify downloaded packages

# 2. Add the Spotify repository

sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client
