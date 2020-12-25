#!/usr/bin/env bash

#
# texpander on Linux machines.
#

# Link hotstrings.
unlink ~/.texpander
rm -rf ~/.texpander
ln -sv ~/.dotfiles/texpander ~/.texpander
