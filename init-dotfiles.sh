#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

DDIRECTORY="$HOME/.dotfiles/"
mkdir -p "${DDIRECTORY}"
cd "${DDIRECTORY}"

DDIRECTORY_ZSH="${DDIRECTORY}/zsh-config"

if [ -d "$DDIRECTORY_ZSH" ]; then
  cd "$DDIRECTORY_ZSH" && git pull
  cd -
else
  git clone https://github.com/hloeffler/zsh-config.git
fi
stow zsh-config
if [ -d "${HOME}/.zsh/zsh-syntax-highlighting" ]; then
	echo "skip clone zsh-syntax-highlighting";
else
	cd "${HOME}/.zsh"
	git clone --branch 0.5.0 https://github.com/zsh-users/zsh-syntax-highlighting.git
fi
