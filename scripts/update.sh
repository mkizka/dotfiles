#!/usr/bin/env bash
set -euo pipefail

brew bundle dump --no-vscode --no-winget --no-npm --no-describe --force --global
chezmoi re-add
