# homebrew-imsprog

Self-hosted Homebrew Tap for [IMSProg](https://github.com/bigbigmdm/IMSProg)

IMSProg - software for CH341A-based programmers to work with I2C, SPI and MicroWire EEPROM/Flash chips.

> [!WARNING]
> Currently app artifacts are not signed and blocked by Gatekeeper.
> To bypass Gatekeeper, run once after installation or upgrade: `sudo xattr -rd com.apple.quarantine /Applications/IMSProg*.app`

## Installation / Upgrade

```bash
brew tap bigbigmdm/imsprog

# Trust the tap
brew trust bigbigmdm/imsprog

# Installation
brew install --cask imsprog

# Upgrade
brew upgrade --cask imsprog
```

## Uninstallation

```bash
# Remove the cask
brew uninstall --cask imsprog

# Remove tap
brew untap bigbigmdm/imsprog
```
