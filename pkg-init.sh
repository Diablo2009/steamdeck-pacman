#! /bin/bash
BIN=/home/deck/.local/bin
BASHRC=/home/deck/.bashrc
EXPORT=/home/deck/.local/steamdeck-pacman/export-cmd.txt

$BIN/pkg-key --init
$BIN/pkg-key --populate

echo $(cat $EXPORT) >> $BASHRC
sleep 1
rm -rf $EXPORT
rm -rf $BIN/pkg-init
