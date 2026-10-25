#!/usr/bin/env bash
# Bootstrap symlinks: ~/.config files point at this repo's copies, so editing
# your live config edits the versioned file. Existing files are backed up to
# "$BACKUP_DIR" first.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKUP_DIR="${HOME}/.config/omarchy-conf-backup/$(date +%Y%m%d_%H%M%S)"

link() { # <live-path> <repo-relative-path>
  local live=$1 rel=$2
  if [[ -e $live && ! -L $live ]]; then
    mkdir -p "$(dirname "$BACKUP_DIR/$live")"
    cp -a "$live" "$BACKUP_DIR/$live"
    echo "backed up: $live -> $BACKUP_DIR"
  fi
  mkdir -p "$(dirname "$live")"
  ln -sf "$REPO_DIR/$rel" "$live"
  echo "linked: $live -> $rel"
}

for f in hyprland bindings monitors input looknfeel autostart; do
  link "$HOME/.config/hypr/$f.lua" "hypr/$f.lua"
done
for f in hyprsunset xdph; do
  link "$HOME/.config/hypr/$f.conf" "hypr/$f.conf"
done
link "$HOME/.config/hypr/.luarc.json" "hypr/.luarc.json"
link "$HOME/.config/opencode/cli.json" "opencode/cli.json"
link "$HOME/.config/opencode/themes/nothing-dark.json" "opencode/themes/nothing-dark.json"
link "$HOME/.config/herdr/config.toml" "herdr/config.toml"
