#!/usr/bin/env bash
set -euo pipefail

brew bundle --global
mise install
fish -c "fisher update"

