#!/usr/bin/env bash

#
# Logging.
#
# shellcheck disable=SC2154

#
# Relative paths to libraries.
#
  lib_paths=(
    ./color.sh
  )
  for lib_path in "${lib_paths[@]}"; do
    SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    if [ -e "$SCRIPT_PATH/$lib_path" ]; then
      # Is source of a source.
      source "$SCRIPT_PATH/$lib_path"
    else
      # Is a source.
      SCRIPT_PATH=$(dirname "$0")
      source "$SCRIPT_PATH/$lib_path"
    fi
  done

#
# Simple logger.
#
log() {
  local message="$1"
  local level="$2"
  local level_default='info'
  local path="$3"
  local path_default="$HOME/.dotfiles/report/dotfiles.log"
  local prefix='[df]'

  [ -z "$message" ] && return 0
  [ -z "$level" ] && level="$level_default"
  [ -z "$path" ] && path="$path_default"

  mkdir -p "$(dirname "$path")"

  # To console.
  case "$level" in
    pass|passing)
      echo -e "${prefix}[${cGreen}pass${cReset}] $message"
      ;;
    skip)
      echo -e "${prefix}[${cCyan}skip${cReset}] $message"
      ;;
    warn|warning)
      echo -e "${prefix}[${cYellow}warn${cReset}] $message"
      ;;
    err|error)
      echo -e "${prefix}[${cRed}err${cReset} ] $message"
      ;;
    fail|failure)
      echo -e "${prefix}[${cRed}fail${cReset}] $message"
      ;;
    *)
      echo -e "${prefix}[info] $message"
      ;;
  esac

  # To file.
  now="$(date -u "+%Y-%m-%d-%H%M%S")"
  echo "$now,$level,$message" >> "$path"
}
