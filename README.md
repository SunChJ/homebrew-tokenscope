# homebrew-tokenscope

Homebrew tap for [Tokenscope](https://github.com/SunChJ/tokenscope-remix) — a
menu-bar dashboard for local AI coding agent token usage (Claude Code + Codex).

## Install

```bash
brew install --cask sunchj/tokenscope/tokenscope
```

## Upgrade

```bash
brew update && brew upgrade --cask tokenscope
```

## Maintenance

`Casks/tokenscope.rb` is updated automatically by the
[release workflow](https://github.com/SunChJ/tokenscope-remix/blob/main/.github/workflows/release.yml)
when a `v*` tag is pushed (requires the `HOMEBREW_TAP_TOKEN` secret — a PAT
with push access to this repo). To bump by hand: update `version` and `sha256`
(`shasum -a 256 Tokenscope_<version>_universal.dmg`).
