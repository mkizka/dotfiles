#!/usr/bin/env bash
set -euo pipefail

brew bundle --global --quiet
mise install
fish -c "fisher update"
