#!/usr/bin/env bash

#
# Setup zsh.
#

main() {
    local backup_path="$1"
    local backup_path_default='.backup'

    cd ~

    # Backups.
    [ -z "$backup_path" ] && backup_path="$backup_path_default"
    mkdir -p "$backup_path"
    if [ -f .zshrc ]; then
        now="$(date -u "+%Y-%m-%d-%H%M%S")"
        mv .zshrc "$backup_path/.zshrc $now"
    fi

    ln -s .dotfiles/.zshrc
}

main
