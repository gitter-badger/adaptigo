#!/bin/bash

wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key | sudo apt-key add -

aptitude install -y  software-properties-common

apt-add-repository "deb http://apt.insynchq.com/debian jessie non-free contrib"
apt-get update
aptitudept install -y insync 