#!/bin/bash
export DISPLAY=":0.0" 
curl https://tiliado.eu/repository-installer/download/jessie/ -o nuvolaplayer.deb
dpkg -i nuvolaplayer.deb

tiliado-repositories