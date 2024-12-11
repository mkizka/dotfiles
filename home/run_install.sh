#!/usr/bin/env bash
set -euo pipefail

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew bundle --global --quiet
mise install
fish -c "fisher update"
