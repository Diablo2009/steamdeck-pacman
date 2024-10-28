# steamdeck-pacman

## About

steamdeck-pacman is a package made to allow you to run pacman commands on your steamdeck without messing up your system.

## How to Use

Using the commands `pkg` and `pkg-key` can allow you to easily install packages to `/home/deck/.local/bin`
The commands work the same as the actual `pacman` command.

## Install

To install `steamdeck-pacman`, go to the [latest release](https://github.com/Diablo2009/steamdeck-pacman/releases/latest) and download the `steamdeck-pacman.pkg.tar.zst` file. Open up the terminal, type `passwd` to change your password, then type `sudo steamos-readonly disable`, then `cd Downloads`, then `sudo pacman -U steamdeck-pacman.pkg.tar.zst`. Then press `y` when it asks you whether you want to install the file, then `sudo steamos-readonly enable`.

## Set Up PATH

To setup your path, open up `~/.bashrc` in either `kate`, `nano`, or `vim`. If using `kate`, go to the bottom of the file by scrolling down and add the following text: `export PATH=$PATH:/home/steamdeck-pacman/pacman/usr/bin`. Then in a terminal session, type `source ~/.bashrc`. And you're done.

## How to Contribute

Make a [fork](https://github.com/Diablo2009/steamdeck-pacman/fork) of the repository, add your changes on your fork and then make a pull request.
