#!/bin/bash

if [[ $USER = "root" ]] ; then
  echo "Please dont run this script as root"
  exit
fi

export PYTHONPATH="${PYTHONPATH}:/home/${USER}/Hyprland-dotfiles/Builder"
poetry install
poetry run python Builder/src/run/install.py &> ~/hyprland-install-full.log