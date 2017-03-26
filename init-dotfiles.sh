#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

DDIRECTORY="$HOME/.dotfiles/"
mkdir -p "${DDIRECTORY}"
cd "${DDIRECTORY}"

DDIRECTORY_ZSH="${DDIRECTORY}/zsh-config"

if [ -d "$DDIRECTORY_ZSH" ]; then
  cd $DDIRECTORY_ZSH && git pull
  cd -
else
  git clone git@github.com:hloeffler/zsh-config.git
fi
stow zsh-config
