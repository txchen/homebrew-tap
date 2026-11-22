cask "govault" do
  version "0.3.2"
  sha256 "c6f6fa351798862c0519ed256c7675f4bf993e6138e6072b6e68a49b599e7f30"

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
