#!/usr/bin/env bash
set -euo pipefail

exec /home/linuxbrew/.linuxbrew/bin/mise exec -- skills add mkizka/skills -y --global --skill '*' --agent claude-code codex 
