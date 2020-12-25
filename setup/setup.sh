#!/usr/bin/env bash


BACKUP=~/.data/backup
mkdir -p $BACKUP

# vscode
PIE=~/Library/Application Support/Code/User
echo "Backed up ${PIE} to ${BACKUP}."
rsync --backup --update --progress $PIE $BACKUP
cd $PIE
rm settings.json
ln -s ~/.dotfiles/vscode/settings.json
echo "Linked to dotfiles/vscode/settings.json."
rm -rf snippets
ln -s ~/.dotfiles/vscode/snippets
echo "Linked to dotfiles/vscode/settings.json."

# bin
cd $HOME
ln -s ~/.dotfiles/bin .bin
cd -
