#! /bin/bash

## Locations
MAIN=/home/deck/.local/steamdeck-pacman
GPG=$MAIN/gnupg
CONFIG=$MAIN/pacman.conf
MIRRORLIST=$MAIN/mirrorlist

sudo pacman-key --config $CONFIG --gpgdir $GPG $@
