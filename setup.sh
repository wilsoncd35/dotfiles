#!/usr/bin/env bash

#
# Setup dotfiles.
#

#
# Setup misc. dirs and links to those dirs.
#
setup_dirs() {
  local target_dirs

  target_dirs=(
    ~/data/archive/email
    ~/data/archive/irc
    ~/data/archive/iterm
    ~/data/archive/log
    ~/data/archive/shot
    ~/data/backup
    ~/data/log
    ~/data/shot
  )

  # Make dirs if they don't already exist.
  for td in "${target_dirs[@]}"; do
    mkdir -p "$td"
  done

  # Links.
  ln -sv ~/data/shot ~/Desktop

  # rsync -vat --remove-source-files --log-file="$pathLog"/archive.log ~/Desktop/shot*.png "$pathArchive"/screenshot
}
