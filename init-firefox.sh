#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

DDIRECTORY="$HOME/.dotfiles/"
mkdir -p "${DDIRECTORY}"
cd "${DDIRECTORY}"

DDIRECTORY_ZSH="${DDIRECTORY}/firefox-config"

if [ -d "$DDIRECTORY_ZSH" ]; then
  cd "$DDIRECTORY_ZSH" && git pull
  cd -
else
  git clone git@github.com:hloeffler/firefox-config.git
fi
stow firefox-config
