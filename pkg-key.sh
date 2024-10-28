#! /bin/bash

## Locations
MAIN=/home/steamdeck-pacman
PKGROOT=$MAIN/pacman
GPG=$MAIN/gnupg
CONFIG=$PKGROOT/etc/pacman.conf

sudo pacman-key --config $CONFIG --gpgdir $GPG $@
