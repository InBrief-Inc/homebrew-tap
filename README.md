# Invoicer Homebrew tap

Install the universal macOS app:

```sh
brew install --cask inbrief-inc/tap/invoicer
```

Installers and SHA-256 checksums are public at
[Invoicer releases](https://github.com/InBrief-Inc/invoicer-releases/releases).
The cask tracks the latest verified release and supports Invoicer's built-in updater.
Run `brew upgrade --cask --greedy inbrief-inc/tap/invoicer` to request an upgrade
through Homebrew for this automatically updating app.

The app is not yet Apple signed and notarized. If macOS blocks the first launch,
open System Settings > Privacy & Security > Open Anyway after attempting to open it.
The cask does not disable Gatekeeper or remove quarantine.

Normal uninstall and `brew uninstall --cask --zap invoicer` preserve your invoices,
time entries and settings in `~/Library/Application Support/invoicer` and custom
workspace folders. Zap removes only bundle-specific preferences and caches.

Release automation updates `Casks/invoicer.rb` only after the versioned public DMG
and its SHA-256 digest have been verified.
