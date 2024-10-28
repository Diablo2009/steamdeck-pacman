#! /bin/bash

## Locations
MAIN=/home/steamdeck-pacman
PKGROOT=$MAIN/pacman
CONFIG=$PKGROOT/etc/pacman.conf

pacman-conf --config=$CONFIG --rootdir=$PKGROOT $@
