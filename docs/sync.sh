#!/usr/bin/env bash
# Auto-commit and push on config changes (driven by sync.path user unit).
set -euo pipefail
cd ~/Work/omarchy-conf

# Skip when pushed by a git operation that only touched .git internals,
# or when there is nothing to record.
[[ -f .auto-sync-off ]] && exit 0

if git diff --quiet && [[ -z $(git status --porcelain) ]]; then
  exit 0
fi

git add -A
if git commit -m "auto-sync: $(date '+%F %T')" >/dev/null 2>&1; then
  git pull --rebase -q 2>/dev/null || true
  if git push -q 2>/dev/null; then
    omarchy-notification-send "omarchy-conf: pushed to GitHub" -t 2500 2>/dev/null || true
  else
    echo "push failed (offline?) — commit saved locally" >&2
  fi
fi
