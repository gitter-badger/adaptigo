#!/bin/bash

dnf -y --setopt clean_requirements_on_remove=1 erase spotify-client
rm -f /etc/yum.repos.d/fedora-spotify.repo
