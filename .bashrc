#!/usr/bin/env bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init - bash)"

# direnv.
eval "$(direnv hook bash)"

# jira-cli
source "$HOME"/.jirarc

# BullMQ Pro.
source "$HOME"/.taskforcesh

# These dotfiles.
export DOTFILES_PATH="$HOME/.dotfiles"
# Public.
source "$DOTFILES_PATH"/env/default/index.sh
# Private.
source "$HOME/.dotfilesp/env/default/index.sh"
