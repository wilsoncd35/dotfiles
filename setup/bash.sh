#!/usr/bin/env bash

#
# Setup bash.
#

main() {
    local backup_path="$1"
    local backup_path_default='.backup'

    cd ~

    # Backups.
    [ -z "$backup_path" ] && backup_path="$backup_path_default"
    mkdir -p "$backup_path"
    if [ -f .bash_profile ]; then
        now="$(date -u "+%Y-%m-%d-%H%M%S")"
        mv .bash_profile "$backup_path/.bash_profile $now"
    fi

    ln -s .dotfiles/.bash_profile
}

main
