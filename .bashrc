#!/usr/bin/env bash

alias la='ls -alh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init - bash)"

# direnv.
eval "$(direnv hook bash)"

alias vim='nvim'

. $HOME/tashforcesh

