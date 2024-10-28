#! /bin/bash

## Locations
MAIN=/home/steamdeck-pacman
PKGROOT=$MAIN/pacman
GPG=$MAIN/gnupg
HOOK=$MAIN/hook
CONFIG=$PKGROOT/etc/pacman.conf
MIRRORLIST=$PKGROOT/etc/pacman.d/mirrorlist
CACHE=$MAIN/cache
LOG=$MAIN/pacman.log

sudo pacman --root $PKGROOT --cachedir $CACHE --config $CONFIG --gpgdir $GPG --hookdir $HOOK --logfile $LOG $@
