# homebrew-tap

Homebrew tap for [CCTV](https://github.com/manelrv/CCTV) — see which Claude Code
agent needs you, from the macOS menu bar.

## Install

```bash
brew install --cask manelrv/tap/cctv
xattr -dr com.apple.quarantine /Applications/CCTV.app
```

The second line is required for now: CCTV is not yet signed/notarized, so macOS
Gatekeeper quarantines it on install. Removing the quarantine attribute lets it
launch. (You can also right-click the app → **Open** → **Open** the first time.)
Once notarization is in place, the extra step goes away.

> First time tapping from here, Homebrew 6+ may ask you to trust the tap. Run
> `brew tap manelrv/tap` and follow the prompt, or set
> `HOMEBREW_NO_REQUIRE_TAP_TRUST=1`.

## Update

```bash
brew upgrade --cask cctv
```

## Uninstall

```bash
brew uninstall --cask cctv
```
