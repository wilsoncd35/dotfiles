#!/usr/bin/env bash

mkdir -p ~/.data/archive/screenshot

# Dir where screenshots are saved.
defaults write com.apple.screencapture location ~/.data/archive/screenshot
# Change name of screenshots, e.g., show <timestamp>.png.
defaults write com.apple.screencapture name "shot"
