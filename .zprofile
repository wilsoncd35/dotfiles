#!/usr/bin/env sh

# Config.
  exit_code=0
  cgreen="\033[0;32m"
  creset="\033[0m"

# Simple console logger.
  log_info() {
    printf "[${cgreen}d info${creset} ] %s\n" "$1"
  }

# End info. End early, gracefully.
  end_info() {
    log_info 'Done.'
    log_info 'End .zprofile.'
    return "$exit_code"
  }

# Begin info.
  log_info 'Begin .zprofile.'

# These dotfiles.
  export DOTFILES_PATH="$HOME/.dotfiles"

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

# jira-cli.
  [ -f "$HOME"/.jirarc ] && . "$HOME"/.jirarc

# BullMQ Pro.
  [ -f "$HOME"/.taskforcesh ] && . "$HOME"/.taskforcesh

# Personal bins.
  PATH="$DOTFILES_PATH/node_modules/.bin:$PATH"
  PATH="$DOTFILES_PATH/bin:$PATH"

export PATH

# End info.
  end_info
