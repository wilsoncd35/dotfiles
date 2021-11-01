#!/usr/bin/env bash

# Change screenshot location.
  mkdir -p ~/.data/archive/shot
  ln -sv ~/data/shot ~/Desktop
  defaults write com.apple.screencapture location ~/.data/archive/screenshot
  # Change name of screenshots, e.g., show <timestamp>.png.
  defaults write com.apple.screencapture name "shot"
