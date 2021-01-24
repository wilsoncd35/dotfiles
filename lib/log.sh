#!/usr/bin/env bash

#
# Log messages to our report as well as stdout.
#
log() {
  local message="$1"
  local status="$2"
  local cReset='\033[0m'
  local cRed='\033[0;31m'
  local cGreen='\033[0;32m'
  local cYellow='\033[0;33m'

  if [ "$status" == 'pass' ]; then
    message="Pass. $message"
    echo -e "${cGreen}${message}${cReset}"
    ((pass+=1))
  elif [ "$status" == 'green' ]; then
    message="$message"
    echo -e "${cGreen}${message}${cReset}"
  elif [ "$status" == 'fail' ]; then
    message="Fail. $message"
    echo -e "${cRed}${message}${cReset}"  
    ((fail+=1))
  elif [ "$status" == 'red' ]; then
    message="$message"
    echo -e "${cRed}${message}${cReset}"
  elif [ "$status" == 'warn' ]; then
    message="Warn. $message"
    echo -e "${cYellow}${message}${cReset}"
    ((warn+=1))
  elif [ "$status" == 'yellow' ]; then
    message="$message"
    echo -e "${cYellow}${message}${cReset}"
  else
    echo -e "$message"
  fi
  REPORT=$(echo -e "${REPORT}\n${message}")
}