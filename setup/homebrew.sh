#!/usr/bin/env bash

#
# Install homebrew and programs.
#

install_homebrew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

install_homebrew_programs() {
  local taps
  local programs

  command -v brew > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo 'homebrew does not appear to be installed. Exiting.'
    return 1
  fi

  taps=(
    mongodb/brew
  )

  programs=(
    ansible
    awk
    awscli
    bash
    bash-completion@2
    curl
    fswatch
    git
    git-gui
    glib
    gpg
    grep
    helm
    imagemagick
    jq
    kubectl
    lha
    lua
    lynx
    mas
    maven
    mongodb-community@3.6
    nvm
    openldap
    openssh
    openssl
    pandoc
    parallel
    pyenv
    pyenv-virtualenv
    python3
    rabbitmq
    redis
    screen
    shellcheck
    sqlite
    telnet
    trash
    tree
    vim
    wget
    yq
    zsh
    zsh-completions
  )

  for t in "${taps[@]}"; do
    brew tap "$t"
  done

  for p in "${programs[@]}"; do
    brew list --versions "$p" > /dev/null
    [ $? -eq 0 ] || brew install "$p"
  done
}


install_homebrew_casks() {
  local casks

  casks=(
    alfred
    docker
    firefox
    google-chrome
    iterm2
    keepassxc
    microsoft-auto-update
    microsoft-edge
    microsoft-office
    postman
    slack
  )

  for c in "${casks[@]}"; do
    brew list --cask --versions "$c" > /dev/null
    [ $? -eq 0 ] || brew cask install "$c"
  done
}

main() {
  if [ "$(uname)" == 'Darwin' ]; then
    echo 'Install homebrew on Mac OS X.'
    install_homebrew

    echo 'Install programs with homebrew.'
    install_homebrew_programs

    echo 'Install casks with homebrew.'
    install_homebrew_casks
  fi
}
