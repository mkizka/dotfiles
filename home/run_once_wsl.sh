#!/usr/bin/env bash
set -euo pipefail

has() {
  type "$1" > /dev/null 2>&1
}

if ! has wslpath; then
  echo "skip: wslpath not found"
  exit 0;
fi

if ! has wslvar; then
  sudo apt update
  sudo apt install -y wslu
fi

WIN_HOME=$(wslpath "$(wslvar USERPROFILE)") 
WSL_CONFIG_DIR=$HOME/.config/wsl

ln -sf "$WSL_CONFIG_DIR/.wslconfig" "$WIN_HOME/.wslconfig"
sudo ln -sf "$WSL_CONFIG_DIR/wsl.conf" /etc/wsl.conf
