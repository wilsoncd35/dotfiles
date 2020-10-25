#!/usr/bin/env bash

#
# Setup .dotfiles.
#

main() {
    local cfg_alias

    # Find git.
    if command -v /usr/local/bin/git > /dev/null 2>&1; then
        # homebrew or other local git.
        cfg_alias='/usr/local/bin/git'
    elif command -v /usr/bin/git > /dev/null 2>&1; then
        # OS X git.
        cfg_alias='/usr/bin/git'
    else
        echo 'git cannot be found. Exiting.'
        return 1
    fi
    cfg_alias="$cfg_alias --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

    # zsh.
    echo "alias cfg='${cfg_alias}'" >> "$HOME/.zshrc"

    # bash.
    echo "alias cfg='${cfg_alias}'" >> "$HOME/.bashrc"
}

echo 'Begin .dotfiles setup.'
fail=0
main || ((fail+=1))
echo 'End .dotfiles setup.'

[ "$fail" -eq 0 ] || exit 1
