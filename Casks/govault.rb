cask "govault" do
  version "0.2.5"
  sha256 "79c577f908f1cdeb87b4e85ad9496e0e64f4256a86e4078ab516e24663beb374"

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
