#!/usr/bin/env bash

#
# Visual Studio Code setup.
#

main() {
  local target_path="$1"

  [ -d "$target_path" ] || target_path="$HOME/Library/Application Support/Code/User"

  # Link user settings.
  unlink "$target_path/settings.json"
  rm "$target_path/settings.json"
  ln -sv ~/.dotfiles/vscode/settings.json "$target_path"

  # Link snippets.
  unlink "$target_path/snippets"
  rm -rf "$target_path/snippets"
  ln -sv ~/.dotfiles/vscode/snippets "$target_path"

  # Link keybindings.
  unlink "$target_path/keybindings.json"
  rm  "$target_path/keybindings.json"
  ln -sv ~/.dotfiles/vscode/keybindings.json "$target_path"

}

main "$1"
