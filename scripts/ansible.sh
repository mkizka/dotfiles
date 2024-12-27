#!/usr/bin/env bash
set -euo pipefail

ansible-playbook -i localhost, -c local playbook.yml --ask-become-pass
