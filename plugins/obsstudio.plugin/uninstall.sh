#!/bin/bash

dnf copr -y disable phnxrbrn/obs-studio
dnf -y --setopt clean_requirements_on_remove=1 erase obs-studio
