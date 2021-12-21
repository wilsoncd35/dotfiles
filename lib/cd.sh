#!/usr/bin/env bash

#
# Before directory change.
#
_before() {
  # echo 'before'
  return 0
}

#
# After directory change.
#
_after() {
  # echo 'after'
  return 0
}

#
# New change directory, cd.
#
# Allow for executing before and after a cd.
#
cd() {
  _before
  builtin cd "$@" || return 1
  _after
}
alias c=cd

# TODO Cannot prevent infinite loop/nest at this time.
#
# When zsh, add function so that it works with cd shorthand.
#
# ps -o command -p $$ | grep 'zsh' > /dev/null 2>&1
# if [ "$?" -eq 0 ]; then
#   autoload -U add-zsh-hook
#   add-zsh-hook -Uz chpwd cd
# fi
