cask "mattermost-go" do
  version "0.5.0"
  sha256 "3a1d314a44b66818f246d417e50ede218ddb923deb55bce91fe14314248e3ac6"

  url "https://github.com/txchen/mattermostgo/releases/download/v#{version}/mattermost-go-#{version}.dmg"
  name "Mattermost Go"
  desc "Native Mattermost client"
  homepage "https://github.com/txchen/mattermostgo"

  depends_on macos: :monterey

  app "Mattermost Go.app"

  zap trash: [
    "~/Library/Application Support/Mattermost Go",
    "~/Library/Caches/Mattermost Go",
    "~/Library/Preferences/com.github.txchen.mattermostgo.plist",
    "~/Library/Saved Application State/com.github.txchen.mattermostgo.savedState",
  ]
end
