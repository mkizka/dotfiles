#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

find scripts home -type f -name '*.sh' -print0 | xargs -0 shellcheck

while IFS= read -r -d '' f; do
  if ! chezmoi execute-template --source . < "$f" | shellcheck -; then
    echo "shellcheck failed: $f" >&2
    exit 1
  fi
done < <(find home -type f -name '*.sh.tmpl' -print0)
