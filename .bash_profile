#!/usr/bin/env bash

source "$HOME"/.taskforcesh

# nvm.
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

eval "$(rbenv init - bqsh)"

# Rust.
PATH="$HOME/.cargo/bin:$PATH"

# pyenv.
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Go.
PATH="$(go env GOPATH)/bin:$PATH"

# Personal bins.
PATH="$HOME/bin:$PATH"

export PATH
