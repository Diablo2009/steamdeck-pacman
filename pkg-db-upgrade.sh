#! /bin/bash

## Locations
MAIN=/home/steamdeck-pacman
PKGROOT=$MAIN/pacman
CONFIG=$PKGROOT/etc/pacman.conf

sudo pacman-db-upgrade --root $PKGROOT --config $CONFIG $@
