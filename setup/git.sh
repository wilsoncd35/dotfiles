#!/usr/bin/env bash

#
# git configuration.
#

main() {
  unlink ~/.gitconfig
  rm ~/.gitconfig
  ln -sv ~/.dotfiles/.gitconfig ~/

  unlink ~/.gitignore
  rm ~/.gitignore
  ln -sv ~/.dotfiles/.gitignore ~/
}

main
