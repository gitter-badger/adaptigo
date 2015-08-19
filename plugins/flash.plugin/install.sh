#!/bin/bash

FILE=/etc/apt/sources.list.backup

if [ -f $FILE ];
then
   	echo "File $FILE exists"
	aptitude update
	aptitude install -y flashplugin-nonfree
else
	sed 's|debian/ jessie main|debian/ jessie main non-free contrib|g' /etc/apt/sources.list
fi



