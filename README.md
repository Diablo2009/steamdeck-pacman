# steamdeck-pacman

## About

steamdeck-pacman is a package made to allow you to run pacman commands on your steamdeck without messing up your system.

## How to Use

Using the commands `pkg` and `pkg-key` can allow you to easily install packages to `/home/deck/.local/bin`
The commands work the same as the actual `pacman` command.

## Install

To install `steamdeck-pacman`, go to the [latest release](https://github.com/Diablo2009/steamdeck-pacman/releases/latest) and download the `steamdeck-pacman.pkg.tar.zst` file. Open up the terminal.
Change directory to your downloads folder: `cd Downloads`, then type `sudo pacman -U steamdeck-pacman.pkg.tar.zst`. Then press `y` when it asks you whether you want to install the file. After the install finishes, type `/home/deck/.local/bin/pkg-init`. That will add `/home/deck/.local/bin` to your path.

## How to Contribute

Make a [fork](https://github.com/Diablo2009/steamdeck-pacman/fork) of the repository, add your changes on your fork and than make a pull request.
