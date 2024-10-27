#! /bin/bash

## Locations
MAIN=/home/deck/.local/steamdeck-pacman
PKGROOT=/home/deck/.local/bin
GPG=$MAIN/gnupg
HOOK=$MAIN/hook
CONFIG=$MAIN/pacman.conf
MIRRORLIST=$MAIN/mirrorlist
CACHE=$MAIN/cache
LOG=$MAIN/pacman.log

sudo pacman --root $PKGROOT --cachedir $CACHE --config $CONFIG --gpgdir $GPG --hookdir $HOOK --logfile $LOG $@
