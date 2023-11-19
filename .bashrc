#!/usr/bin/env bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init - bash)"

# direnv.
eval "$(direnv hook bash)"

. "$HOME"/taskforcesh

export DOTFILES_PATH="$HOME/.dotfiles"
source "$DOTFILES_PATH"/env/default/index.sh

export GOBIN="$HOME/go/bin"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH:$GOBIN"
