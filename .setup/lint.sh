#!/usr/bin/env bash

#
# Lint/formatter configuration.
#

main() {
  unlink ~/.eslintignore
  rm ~/.eslintignore
  ln -sv ~/.dotfiles/.eslintignore ~/
}

main
