#!/bin/bash

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
wget http://ftp.acc.umu.se/mirror/cdimage/snapshot/Debian/pool/main/libg/libgcrypt11/libgcrypt11_1.5.4-3_amd64.deb
dpkg -i libgcrypt11_1.5.4-3_amd64.deb
# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client
