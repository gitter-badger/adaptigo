#!/bin/bash

dnf -y --setopt clean_requirements_on_remove=1 erase HandBrake-gui HandBrake-cli

if ! rpm --quiet --query libdvdcss makemkv; then
  rm -f /etc/yum.repos.d/fedora-handbrake.repo
fi
