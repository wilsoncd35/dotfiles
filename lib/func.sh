#!/usr/bin/env bash

#
# Remove node_modules.
#
rmn() {
  echo '[b] Removing node_modules...'

  if [ -d node_modules ]; then
    time rm -rf node_modules
    if [ "$?" -eq 0 ]; then
      echo '[b] Done.'
    else
      echo '[b] Failed.'
    fi
  else
    echo '[b] node_modules not found. That is OK.'
  fi
}
