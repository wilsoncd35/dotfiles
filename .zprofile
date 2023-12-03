#!/usr/bin/env bash

# oh-my-zsh.
  export ZSH="$HOME/.oh-my-zsh"
  export ZSH_THEME='robbyrussell'

# nvm.
  export NVM_DIR="$HOME/.nvm"

# pyenv.
  if [ -d "$HOME/.pyenv" ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    PATH="$PYENV_ROOT/bin:$PATH"
  fi

# go.
  if command -v go > /dev/null 2>&1; then
    PATH="$(go env GOPATH)/bin:$PATH"
  fi
# These dotfiles.
  export DOTFILES_PATH="$HOME/.dotfiles"

# jira-cli.
  [ -f "$HOME"/.jirarc ] && . "$HOME"/.jirarc

# BullMQ Pro.
  [ -f "$HOME"/.taskforcesh ] && . "$HOME"/.taskforcesh

# Personal bins.
  PATH="$DOTFILES_PATH/bin:$PATH"

export PATH
