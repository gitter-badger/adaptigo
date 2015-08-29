#!/bin/bash


#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.#

#    You should have received a copy of the GNU General Public License
#   a long with this program.  If not, see <http://www.gnu.org/licenses/>.



if [[ ! $(whoami) = "root" ]]; then
    echo "Please run the script as root."
    exit 1
fi

dir=`mktemp -d` && cd $dir
url="https://github.com/xpd259/adaptigo/archive/v0.3-alpha.tar.gz"
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
[ "$wgetstat" != 0 ] && { print_wget_status $wgetstat; }

tar xf adaptigo-0.3-alpha.tar.gz
cd adaptigo-0.3-alpha
./adaptigo-installer
rm adaptigo-0.3-alpha.tar.gz