#!/usr/bin/env bash

#
# oh-my-zsh setup.
#

main() {
  local target_path="$1"

  [ -d "$target_path" ] || target_path="$HOME/.oh-my-zsh/custom"

  unlink "$target_path/shell.zsh"
  rm "$target_path/shell.zsh"
  ln -sv ~/.dotfiles/shell.zsh "$target_path"
}

main "$1"
