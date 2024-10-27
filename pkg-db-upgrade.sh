#! /bin/bash

## Locations
MAIN=/home/deck/.local/steamdeck-pacman
PKGROOT=/home/deck/.local/bin
CONFIG=$MAIN/pacman.conf
MIRRORLIST=$MAIN/mirrorlist

sudo pacman-db-upgrade --root $PKGROOT --config $CONFIG $@
