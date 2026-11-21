cask "govault" do
  version "0.1.0"
  sha256 "56441e0c6610a3a89ec58bd99cd1f8a8304835e9d7c5a7cc669fe8e7023e7f13"

  url "https://github.com/txchen/govault/releases/download/v#{version}/GoVault-#{version}-macos-arm64.dmg"
  name "GoVault"
  desc "Native desktop client for self-hosted Vaultwarden servers"
  homepage "https://github.com/txchen/govault"

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
