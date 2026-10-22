cask "invoicer" do
  version "2.4.0"
  sha256 "32646a88d9d132e19ba4861e3587c017e9ecc1ef5493798bd86cd5c9180ab5a6"

  url "https://github.com/InBrief-Inc/invoicer-releases/releases/download/v#{version}/invoicer-macos.dmg"
  name "Invoicer"
  desc "Local time tracking and invoicing"
  homepage "https://invoicer.inbrief.sh/"

  auto_updates true
  depends_on :macos

  app "Invoicer.app"

  zap trash: [
    "~/Library/Caches/com.invoicetimer.invoicer",
    "~/Library/Preferences/com.invoicetimer.invoicer.plist",
    "~/Library/Saved Application State/com.invoicetimer.invoicer.savedState",
    "~/Library/WebKit/com.invoicetimer.invoicer",
  ]

  caveats <<~EOS
    Invoicer is not yet signed and notarized by Apple.
    After the first launch attempt, use System Settings > Privacy & Security >
    Open Anyway if macOS blocks it. Homebrew does not bypass Gatekeeper.

    Uninstalling, including --zap, preserves your invoicing workspace in
    ~/Library/Application Support/invoicer and any custom workspace folder.
  EOS
end
