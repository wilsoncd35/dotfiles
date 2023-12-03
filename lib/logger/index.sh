#!/usr/bin/env bash

#
# Simple console logger.
#
log.info() {
  local message="$1"
  local prefix="$2"

  [[ -z "$message" ]] && return 64
  [[ -z "$prefix" ]] && prefix='[df info ]'

  echo -e "$prefix $message"
}
