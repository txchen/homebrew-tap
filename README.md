# txchen Homebrew tap

Signed and notarized macOS applications from txchen.

## Altty

Requires an Apple-silicon Mac and macOS 15 or later.

```sh
brew install --cask txchen/tap/altty
open /Applications/Altty.app
```

Grant Accessibility access when prompted. Mouse-only scroll reversal also needs Input Monitoring. Homebrew cannot grant these macOS permissions for you.

Quit Altty before updating, then run:

```sh
brew update
brew upgrade --cask altty
open /Applications/Altty.app
```

Regular uninstall preserves settings. `brew uninstall --zap --cask altty` also removes settings and caches.

## XFrame

Requires an Apple-silicon Mac and macOS 27 or later.

```sh
brew install --cask txchen/tap/xframe
open /Applications/XFrame.app
```

Quit XFrame before updating, then run:

```sh
brew update
brew upgrade --cask xframe
open /Applications/XFrame.app
```

XFrame cask updates are maintained manually. Uninstall preserves settings and credentials.

## Updates

The update workflow checks the latest stable [Altty release](https://github.com/txchen/altty/releases) every 30 minutes, or on manual dispatch. It verifies the released ZIP, notarization, and Homebrew installation before committing a version change. If a prior version exists, it also tests upgrade and settings preservation. No Apple signing credentials are stored in this repository.
