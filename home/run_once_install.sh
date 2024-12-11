#!/usr/bin/env bash
set -euo pipefail

# https://qiita.com/okamos/items/40966158d0271ae7198b
has() {
  type "$1" > /dev/null 2>&1
}

if ! has git; then
  sudo apt update
  sudo apt install -y git gcc
fi

if ! has brew; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

brew bundle --global
mise install
fish -c "fisher update"
