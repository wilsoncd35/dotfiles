#!/usr/bin/env bash

#
# git configuration.
#

main() {
  local backup_path="$1"
  local backup_path_default='.backup'

  # Backups.
    [ -z "$backup_path" ] && backup_path="$backup_path_default"

    cd ~
    mkdir -p .backup
    now="$(date -u "+%Y-%m-%d-%H%M%S")"

    unlink .gitconfig
    unlink .gitignore
    [ -f .gitconfig ] && mv .gitconfig "$backup_path/.gitconfig $now"
    [ -f .gitignore ] && mv .gitignore "$backup_path/.gitignore $now"

  # Link to the configs.
    ln -s .dotfiles/.gitconfig .
    ln -s .dotfiles/.gitignore .

  # Add some config, secrets.
    echo 'Enter git global user.name.'
    read userName
    echo 'Enter git global user.email.'
    read userEmail

    git config --global user.name "$userName"
    git config --global user.email "$userEmail"
}

main
