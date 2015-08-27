#!/bin/bash

if [[ ! $(whoami) = "root" ]]; then
    echo "Please run the script as root."
    exit 1
fi
cd /opt/
url="https://github.com/xpd259/debbie/archive/v0.1-alpha.tar.gz"
wgetboredom='--dns-timeout=30 --connect-timeout=30 --read-timeout=120 --tries=4'
wgetprogress='--progress=bar:force --show-progress'


function print_wget_status
# Print a friendly error message for wget status code on standard output
# https://www.gnu.org/software/wget/manual/wget.html#Exit-Status
# $1 = wget status code
# Return status: always 0
{
  case $1 in
  1)   echo "Generic error code" ;;
  2)   echo "Parse error - for instance, when parsing command-line
options or .wgetrc or .netrc" ;;
  3)   echo "File I/O error" ;;
  4)   echo "Network failure" ;;
  5)   echo "SSL verification failure" ;;
  6)   echo "Username/password authentication failure" ;;
  7)   echo "Protocol errors" ;;
  8)   echo "Server issued an error response" ;;
  '')  echo "wget status is null" ;;
  *)   echo "wget status $1" ;;
  esac
  return 0
}

wget $wgetboredom $wgetprogress --no-check-certificate --content-disposition "$url" 
[ "$wgetstat" != 0 ] && { print_wget_status $wgetstat; exit 1; }

tar xf debbie-0.1-alpha.tar.gz

install -dm755 /usr/bin/
install -dm755 /opt/debbie//

install -Dpm 0755 debi.exec /usr/bin/debi
install -Dpm 0755 debi /opt/debbie/debi
install -Dpm 0755 app.js /opt/debbie/app.js
install -dm755 /opt/debbie//
install -Dpm 0755 bin/run-as-root /opt/debbie/bin/run-as-root
install -Dpm 0755 bin/run-as-user /opt/debbie/bin/run-as-user
install -Dpm 0644 debi.desktop /usr/share/applications/debi.desktop
install -Dpm 0644 debi.appdata.xml /usr/share/appdata/debi.appdata.xml

install -Dpm 0644 debi.svg /usr/share/icons/hicolor/scalable/apps/debi.svg
install -Dpm 0644 debi-symbolic.svg /usr/share/icons/hicolor/scalable/apps/debi-symbolic.svg

install -Dpm 0644 run-as-root.policy /usr/share/polkit-1/actions/run-as-root.policy

gtk-update-icon-cache -f -t /usr/share/icons/hicolor
rm -Rfv /opt/debbie/plugins/
install -dm755 /opt/debbie/plugins
cp -pr plugins/* /opt/debbie/plugins/
