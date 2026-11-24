cask "govault" do
  arch arm: "arm64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "32ca7eedff6dfafa5eb3b96bdd0b17622c678be9efc59b14d58a46d73c070c29",
         intel: "6d89b06b682192b34802b5531349c45fb5b563108ed7d85ba8d9d1565cbe2ba6"

  url "https://github.com/txchen/govault/releases/download/v#{version}/govault-#{version}-macos-#{arch}.dmg"
  name "GoVault"
  desc "Native desktop client for self-hosted Vaultwarden servers"
  homepage "https://github.com/txchen/govault"

  auto_updates true
  depends_on macos: :ventura

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
