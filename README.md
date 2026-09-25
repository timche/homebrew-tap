# timche/homebrew-tap

Homebrew formulae for my own tools, the ones that are not in homebrew/core.

```sh
brew install timche/tap/boswell
```

## What is in it

- [boswell](https://github.com/timche/boswell) — a daemon that watches git repositories and commits and pushes what changes.

Each formula installs the binaries a release publishes rather than building from source, and carries no `service` block: the machine that runs a daemon owns its LaunchAgent or systemd unit, because the environment those need is machine-specific.

`Formula/boswell.rb` is written by boswell's own release workflow, which rewrites the version, URLs and checksums and pushes here over a deploy key. Edit its generator, `scripts/update-tap-formula.sh` in boswell, rather than the formula.
