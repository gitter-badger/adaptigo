# Debbie

## Alpha :- Still may eat your dinner, kittens, system or worse
please! have backups of /etc/ and your /home


debbie is a instasller for the things that debian doesn't have installed, 
insipred and forked from the fedy installer for fedora

### Introduction

 Debbie lets you install multimedia codecs and additional software that Debia doesn't want to ship or have instaled by default, like mp3 support, Adobe Flash, Oracle Java etc., and much more with just a few clicks.

### License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see gnu.org/licenses.

Copyright (C) Dick William Thomas

### Dependencies

Fedy relies on GTK+3 and GJS for it's UI layer.

The included plugins rely on the following packages,
	
	curl
    wget
    debian main non-free contrib repos
    aptitude
    apt-get
    gdebi

### Installation

Debbie can be installed with our script which automatically sets up the Some repos and dependencies.
Usage

After installation, search for Debbie in the menu/overview or type fedy in the terminal.


### Plugin structure

Plugins can be placed under ~/.local/share/debbie/plugins/, or the system plugins directory.

Each plugin is a directory with the suffix .plugin, which consist of a JSON formatted metadata file. The metadata file contains information about the plugin and describes how Fedy should run the tasks.

The plugins can run any command or scripts (bash, python etc.). In addtion to the system commands, Fedy provides an additional command, run-as-root to allow running commands (e.g.- run-as-root touch /some/file/somewhere) or scripts (e.g.- run-as-root -s do-stuff.sh) as root.

Have a look at the existing plugins to know more about how to write plugins for Fedy.
Source code

You can get the latest source code from the github page.

git clone git@github.com:xpd259/debbie.git

### Bugs and feature requests

Please submit bugs and feature requests here. Pull requests are always welcome.



![alt text](https://raw.githubusercontent.com/xpd259/debbie/master/screenshots/Screenshot%20from%202015-08-25%2014%3A21%3A21.png "Logo Title Text 1")


forked from fedy original source can be found at https://github.com/folkswithhats/fedy
