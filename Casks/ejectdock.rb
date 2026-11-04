cask "ejectdock" do
  version "0.1.0"
  sha256 "8cf7b8d9f2853c0a3a53f737140b94be29fd4681381c8bf97a559d08c39cf3e2"

  url "https://github.com/wasabeehq/eject-dock/releases/download/v0.1.0/EjectDock-0.1.0-universal.zip"
  name "EjectDock"
  desc "Eject selected external disks from the menu bar"
  homepage "https://github.com/wasabeehq/eject-dock"

  depends_on macos: ">= :ventura"

  app "EjectDock.app"

  zap trash: "~/Library/Preferences/fr.wasabee.ejectdock.plist"

  caveats <<~EOS
    EjectDock is ad hoc signed and not notarized by Apple, so macOS Gatekeeper
    blocks the first launch. Approve it once with either method:

      1. Open EjectDock, then go to System Settings > Privacy & Security,
         scroll to the Security section, and click "Open Anyway".
      2. Or run: xattr -dr com.apple.quarantine /Applications/EjectDock.app
  EOS
end
