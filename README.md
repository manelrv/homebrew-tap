# homebrew-tap

Homebrew tap for [CCTV](https://github.com/manelrv/CCTV) — see which Claude Code
agent needs you, from the macOS menu bar.

## Install

```bash
brew install --cask --no-quarantine manelrv/tap/cctv
```

`--no-quarantine` is required for now: CCTV is not yet signed/notarized, so
macOS Gatekeeper would otherwise block it. Once notarization is in place, the
flag won't be needed.

## Update

```bash
brew upgrade --cask cctv
```

## Uninstall

```bash
brew uninstall --cask cctv
```
