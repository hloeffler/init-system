#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mkdir -p "$HOME/.dotfiles/"
cd "$HOME/.dotfiles/"
git clone git@github.com:hloeffler/zsh-config.git
stow zsh-config
