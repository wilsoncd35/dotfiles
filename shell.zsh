
#
# Aliases, functions, vars.
#


# Dirs.
alias dl="cd ~/Downloads"
alias la="ls -alh"
alias df="df -h"

# OS X.
# Hide/show all desktop icons.
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# Open apps.
alias chrome="open -a google\ chrome"
alias chromed="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222"
alias firefox="open -a firefox"
alias safari="open -a safari"
alias preview="open -a preview"
alias postman="open -a Postman"
alias slack="open -a Slack"
alias mute="osascript -e 'set volume output muted true'"
alias unmute="osascript -e 'set volume output volume 75'"
# Lock screen.
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias wifion="networksetup -setairportpower en0 on"
alias wifioff="networksetup -setairportpower en0 off"

# git.
alias g="git"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git pull'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb'
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'

# Docker.
alias docks="docker stop $1"
alias dockrm="docker container rm $1"
alias dockrmi="docker rmi $1"
dockb(){
  docker build --no-cache -t $1 .
}
dockcli(){
  docker exec -it $1 sh -l
}
dockr(){
  docker run -it --privileged --name $1 -d $2
}

# Docker compose.
alias dcu="docker-compose up"
alias dcs="docker-compose stop"
alias dcstop="docker-compose stop $1"
alias dcstart="docker-compose start $1"

# Misc.
alias rmn="rm -rf node_modules"

# Color.
export cNone="\e[0m"
export cYellow="\e[33m"
export cRed="\e[31m"
export cCyan="\e[36m"
export cGreen="\e[32m"

# Cypress.io. Do not send crash reports.
export CYPRESS_CRASH_REPORTS=0
