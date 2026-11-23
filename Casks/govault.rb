cask "govault" do
  version "0.4.0"
  sha256 "29fde7b894e85b255bc3912516d461e4a2326f0b7659a8a573f1b17aa617198e"

  url "https://github.com/txchen/govault/releases/download/v#{version}/govault-#{version}-macos-arm64.dmg"
  name "GoVault"
  desc "Native desktop client for self-hosted Vaultwarden servers"
  homepage "https://github.com/txchen/govault"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "GoVault.app"
  binary "#{appdir}/GoVault.app/Contents/MacOS/gv"

  zap trash: [
    "~/Library/Application Support/dev.txchen.govault",
    "~/Library/Application Support/GoVault",
    "~/Library/Caches/dev.txchen.govault",
    "~/Library/Caches/GoVault",
    "~/Library/Preferences/dev.txchen.govault.plist",
    "~/Library/Saved Application State/dev.txchen.govault.savedState",
  ]
end
