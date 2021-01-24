#!/usr/bin/env bash

# Install Visual Studio Code extensions.

extensions=(
  alexkrechik.cucumberautocomplete
  bungcip.better-toml
  DavidAnson.vscode-markdownlint
  dbaeumer.vscode-eslint
  donjayamanne.githistory
  DotJoshJohnson.xml
  eamodio.gitlens
  EditorConfig.EditorConfig
  eg2.vscode-npm-script
  esbenp.prettier-vscode
  fabiospampinato.vscode-todo-plus
  googlecloudtools.cloudcode
  hashicorp.terraform
  idleberg.applescript
  ms-azuretools.vscode-docker
  ms-kubernetes-tools.vscode-kubernetes-tools
  ms-python.python
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vsliveshare.vsliveshare
  msjsdiag.debugger-for-chrome
  octref.vetur
  redhat.vscode-yaml
  timonwong.shellcheck
  vscode-icons-team.vscode-icons
  goland.go
)

for e in "${extensions[@]}";
do
  code --install-extension "$e"
done
