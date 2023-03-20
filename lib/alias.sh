#!/usr/bin/env bash

# Misc.
  alias dl='cd ~/Downloads'
  alias dt='cd ~/Desktop'
  alias la='ls -alh'
  alias df='df -h'

# git.
  alias g='git'
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

# macOS specific.
  if [ "$(uname)" = 'Darwin' ]; then
    # Hide/show all desktop icons.
    alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
    alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
    # Open apps.
    alias chrome="open -a google\ chrome"
    alias chromed="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222"
    alias firefox="open -a firefox"
    alias safari="open -a safari"
    alias preview="open -a preview"
    alias slack="open -a Slack"
    alias mute="osascript -e 'set volume output muted true'"
    alias unmute="osascript -e 'set volume output volume 75'"
    # Lock screen.
    alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
    alias wifion="networksetup -setairportpower en0 on"
    alias wifioff="networksetup -setairportpower en0 off"
  fi