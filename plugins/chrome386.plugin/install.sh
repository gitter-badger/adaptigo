#!/bin/bash
aptitude insatll -y apt-transport-https
echo 'deb https://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
aptitude insatll -y google-chrome-stable