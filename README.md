# omarchy-conf

Living configuration for my Omarchy (Arch + Hyprland) setup, versioned so any
machine can be rebuilt from here. Synced via symlink from `~/.config`.

## Layout

```
hypr/          # Hyprland Lua configs (bindings, monitors, input, look & feel)
opencode/      # OpenCode CLI config + custom theme nothing-dark
herdr/         # Herdr terminal multiplexer config
```

## What's customized

- `hypr/bindings.lua` — personal bindings; `SUPER+SHIFT+S` rebound from the
  preinstalled Google Maps webapp to `omarchy screenshot`.
- `hypr/input.lua` — trackpad `sensitivity = -0.7` and natural scrolling.
- `hypr/monitors.lua` — laptop 2880x1800 (scale 2) + external MSI MPG341CX
  OLED ultrawide at native `3440x1440@240` (scale 1.6, fuzzy-snapped from 1.5).
- `opencode/themes/nothing-dark.json` — OpenCode theme matching the Nothing
  design language (see daniheras/nothing-dark-configs for the framed tour).
- `herdr/config.toml` — `vesper` base restyled to the same Nothing palette
  (graphite surfaces, `#D71921` accent), tmux-style keybindings.

## Submodules

- **nothing-dark-configs** — the Nothing-themed OpenCode/Herdr presentation
  repo (custom `nothing-dark` OpenCode theme, framed README screenshots).
  Pinned to the validated commit; bump with:

  ```sh
  git submodule update --remote nothing-dark-configs
  git add nothing-dark-configs && git commit -m "bump nothing-dark-configs"
  ```

  Clone this repo on another machine with:

  ```sh
  git clone --recurse-submodules https://github.com/daniheras/omarchy-conf
  ```

## Symlink install (live-edit in the repo)

```sh
ln -sf ~/Work/omarchy-conf/hypr/bindings.lua ~/.config/hypr/bindings.lua
# ...repeat per file, or run docs/link.sh
```

See `docs/link.sh` in this repo for the full bootstrap of symlinks, and
`sync.service`/`sync.path` (user units) for the auto-commit-and-push watcher.
