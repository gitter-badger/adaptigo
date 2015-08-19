#!/bin/bash

dnf copr -y disable lkiesow/mumble
dnf -y --setopt clean_requirements_on_remove=1 erase mumble
