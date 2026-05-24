#!/usr/bin/env bash
set -euo pipefail

brew bundle dump --no-vscode --force --global
chezmoi re-add
