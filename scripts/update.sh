#!/usr/bin/env bash
set -euo pipefail

brew bundle dump --no-vscode -f --global
chezmoi re-add
