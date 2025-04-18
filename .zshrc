#!/usr/bin/env sh

# Config.
  exit_code=0
  cgreen="\033[0;32m"
  creset="\033[0m"

# Simple console logger.
  log_info() {
    printf "[${cgreen}d info${creset} ] %s\n" "$1"
  }

# End info. End early, gracefully.
  end_info() {
    log_info 'Done.'
    log_info 'End .zshrc.'
    return "$exit_code"
  }

# Begin info.
  log_info 'Begin .zshrc.'

# Oh my zsh.
  . "$HOME/.oh-my-zsh/oh-my-zsh.sh"

# Things we don't want to commit.
  . "$HOME/.envrc"

# Misc.
  alias la='ls -alh'
  alias df='df -h'

# git.
  alias g='git'
  alias glod='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
  alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
  alias gp='git pull'
  alias ga='git add'
  alias gc='git commit'
  alias gca='git commit -a'
  alias gco='git checkout'
  alias gcb='git copy-branch-name'
  alias gb='git branch'
  alias gs='git status -sb'
  alias gac='git add -A && git commit -m'
  alias ge='git-edit-new'

# Python.
  # alias p='python'

# Node.js.
  alias n='node'

# npm.
  alias npmi='npm install'
  alias npmc='npm ci'
  alias npml='npm run lint'
  alias npmt='npm run test'
  alias npmb='npm run build'

# Playwright.
  alias pw='playwright'
  alias pwui='playwright test --ui'
  alias pwt='playwright test'
  alias pwth='playwright test --headed'
  alias pwcg='playwright codegen'

# vscode.
  alias c='code'

# nvm.
  alias n14='nvm use 14'
  alias n16='nvm use 16'
  alias n18='nvm use 18'
  alias n20='nvm use 20'
  alias n22='nvm use 22'

# AWS CLI.
  alias a='aws'
  alias asl='aws sso login'

# kubectl.
  alias k='kubectl'
  alias kcu='kubectl config use-context'
  alias kcg='kubectl config get-contexts'
  alias kgp='kubectl get pods --all-namespaces=false'
  alias kgpa='kubectl get pods --all-namespaces=true'
  alias ke='kubectl exec --stdin=true --tty=true --container'

# helm.
  alias h='helm'

# ArgoCD.
  alias acd='argocd'

# Argo Workflows.
  alias aw='argo'

# Podman/Docker.
  alias p='podman'
  alias pr='podman run'
  alias pd='podman pull'
  alias pe='podman exec'
  alias pey='podman exec --interactive --tty'
  alias pp='podman pod'
  alias d='docker'
  alias dco='docker compose'
  alias dr='docker run'
  alias dritd='docker run --interactive --tty --detach'
  alias dp='docker pull'
  alias de='docker exec'
  alias deit='docker exec --interactve --tty'

  export DOCKER_HOST='unix:///var/folders/vk/_vtj8q6n1h113g0vf5yt3b9h0000gq/T/podman/podman001-api.sock'

# Jira.
  alias j='jira'

# Github.
  alias ghc='gh copilot'

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

#
# Remove node_modules.
#
rmn() {
  log_info 'Removing node_modules.'

  if [ -d node_modules ]; then
    time rm -rf node_modules
    if [ "$?" -eq 0 ]; then
      log_info 'Done.'
    else
      log_info 'Failed.'
    fi
  else
    log_info 'node_modules not found. That is OK.'
  fi
}

# pyenv.
  eval "$(pyenv init --path)"

# direnv.
  # Silent.
  export DIRENV_LOG_FORMAT=
  eval "$(direnv hook zsh)"

# nvm.
  [ -s "$HOME"/.nvm/nvm.sh ] && . "$HOME"/.nvm/nvm.sh
  [ -s "$HOME"/.nvm/bash_completetion ] && . "$HOME"/.nvm/bash_completion
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# .NET
  export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"
  export MONO_GAC_PREFIX="/usr/local"

# kind.
  # export KIND_EXPERIMENTAL_PROVIDER=podman

# bun completions
[ -s "/Users/cwilson/.bun/_bun" ] && source "/Users/cwilson/.bun/_bun"

# bun
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"

# This bin path.
  export PATH="$HOME/bin:$PATH"

# End info.
  end_info
