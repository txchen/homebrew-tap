cask "govault" do
  version "0.3.4"
  sha256 "1fe832a977f84165a5382447f22f6f80d44113d2bc3303fe42456492929754ff"

  url "https://github.com/txchen/govault/releases/download/v#{version}/govault-#{version}-macos-arm64.dmg"
  name "GoVault"
  desc "Native desktop client for self-hosted Vaultwarden servers"
  homepage "https://github.com/txchen/govault"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "GoVault.app"

  zap trash: [
    "~/Library/Application Support/dev.txchen.govault",
    "~/Library/Application Support/GoVault",
    "~/Library/Caches/dev.txchen.govault",
    "~/Library/Caches/GoVault",
    "~/Library/Preferences/dev.txchen.govault.plist",
    "~/Library/Saved Application State/dev.txchen.govault.savedState",
  ]
end
