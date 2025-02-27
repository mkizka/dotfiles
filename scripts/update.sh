#!/usr/bin/env bash
set -euo pipefail

brew bundle dump --no-vscode --force --global --cleanup
chezmoi re-add

