#!/usr/bin/env bash

# Install Visual Studio Code extensions.

extensions=(
  amazonwebservices.aws-toolkit-vscode
  asciidoctor.asciidoctor-vscode
  christian-kohler.npm-intellisense
  davidanson.vscode-markdownlint
  dbaeumer.vscode-eslint
  denoland.vscode-deno
  donjayamanne.githistory
  eamodio.gitlens
  equinusocio.vsc-material-theme
  equinusocio.vsc-material-theme-icons
  esbenp.prettier-vscode
  github.codespaces
  github.copilot
  github.copilot-chat
  github.github-vscode-theme
  github.remotehub
  github.vscode-github-actions
  github.vscode-pull-request-github
  goland.go
  gruntfuggly.todo-tree
  mechatroner.rainbow-csv
  ms-azuretools.vscode-docker
  ms-kubernetes-tools.vscode-kubernetes-tools
  ms-python.debugpy
  ms-python.python
  ms-python.vscode-pylance
  ms-toolsai.jupyter
  ms-toolsai.jupyter-keymap
  ms-toolsai.jupyter-renderers
  ms-toolsai.vscode-jupyter-cell-tags
  ms-toolsai.vscode-jupyter-slideshow
  ms-vscode-remote.remote-containers
  ms-vscode.azure-repos
  ms-vscode.cpptools
  ms-vscode.mono-debug
  ms-vscode.remote-repositories
  randomfractalsinc.vscode-data-preview
  redhat.vscode-yaml
  sumneko.lua
  timonwong.shellcheck
  vscodevim.vim
)

for e in "${extensions[@]}";
do
  code --install-extension "$e"
done
