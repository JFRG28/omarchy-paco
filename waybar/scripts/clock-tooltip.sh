#!/usr/bin/env bash
set -euo pipefail

# Localized time text (dd/mm 24h)
text="$(date +"%d/%m %H:%M")"

# Full month calendar as tooltip
# - escape quotes
# - convert newlines to literal \n so JSON stays on one line
tooltip="$(cal | sed 's/"/\\"/g' | awk '{printf "%s\\n", $0}')"

printf '{"text":"%s","tooltip":"%s"}\n' "$text" "$tooltip"


