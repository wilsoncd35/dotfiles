#!/usr/bin/env sh

#
# Color in the terminal.
#
# Usage: echo "${cRed}Fail. Test failed!${cReset}"
#

# Reset color to original.
export cReset='\033[0m'

# Foreground, text.
export cBlack='\033[0;30m'
export cRed='\033[0;31m'
export cGreen='\033[0;32m'
export cYellow='\033[0;33m'
export cBlue='\033[0;34m'
export cMagenta='\033[0;35m'
export cCyan='\033[0;36m'
export cWhite='\033[1;37m'

# Foreground, text, light.
export cLRed='\033[1;31m'
export cLGreen='\033[1;32m'
export cLYellow='\033[1;33m'
export cLBlue='\033[1;34m'
export cLMagenta='\033[1;35m'
export cLCyan='\033[1;36m'
