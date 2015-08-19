
#!/bin/bash
aptitude install -y curl
http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb -o viber.deb
dpkg -i viber.deb
apt-get --yes --fix-broken install
