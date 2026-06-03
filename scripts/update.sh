#!/usr/bin/env bash
set -euo pipefail

brew bundle dump --no-vscode --no-winget --force --global
chezmoi re-add
