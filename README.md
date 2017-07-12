## Usage

To setup the files for [NeoVim](https://neovim.io/):
```sh
    $ git clone git@github.com:lsdr/nvim.git nvim
    $ make install
```

This will do the following:

1. Check for existing configuration files and immediately exit if it finds one
1. Put in place a `$HOME/.config` dir if it doesn't exist already
1. _Symlink_ this repos to `~/.config/nvim`
1. Create needed dirs (plugins, tmp)
1. Install [vim-plug][plug]
1. Fire `nvim` to install plugins declared in the configuration files

NeoVim is ready to roll just after the `make` is done.

## Pre-requisites

To use this setup, you need:

* Neovim (obviously) and
* curl

The latter is required to fetch and install [vim-plug][plug].

## Why the symlink dance?

NeoVim follows the _XDG Base Directory Specification_, meaning that
configuration files will live in the `$XDG_CONFIG_HOME` which, in turn, is
usually set to `$HOME/.config`.

I don't like to keep code/settings repos spread across my `$HOME`, so I leave
then in `~/Code` or something and symlink stuff where applications can find it.

The only project I had that broke this convention was
[my vim files](https://github.com/lsdr/vim), but starting fresh with NeoVim is
a good opportunity to fix this.

:mahjong:


[plug]: https://github.com/junegunn/vim-plug
