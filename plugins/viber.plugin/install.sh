#!/bin/bash
if (uname -a | grep 'x86_64'); then
		curl http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb -o viber.deb
		dpkg -i viber.deb
		apt-get --yes --fix-broken install
	else
		echo "i386"
fi

