#!/bin/bash

FILE=/etc/apt/sources.list.backup

if [ -f $FILE ];
then
   	echo "File $FILE exists"
	aptitude update
	aptitude install -y flashplugin-nonfree
else
	sed -i 's|debian/ jessie main|debian/ jessie main non-free contrib|g' /etc/apt/sources.list

	sed -i 's|jessie/updates main|jessie/updates main non-free contrib|g' /etc/apt/sources.list

	sed -i 's|debian/ jessie-updates main|debian/ jessie-updates main non-free contrib' /etc/apt/sources.list
fi




