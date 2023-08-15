#!/usr/bin/env bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init - bash)"

# direnv.
eval "$(direnv hook bash)"

. "$HOME"/taskforcesh

export DOTFILES_PATH="$HOME/.dotfiles"
source "$DOTFILES_PATH"/lib/cd.sh
source "$DOTFILES_PATH"/lib/shell.sh
