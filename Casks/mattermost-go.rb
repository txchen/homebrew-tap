cask "mattermost-go" do
  version "0.1.1"
  sha256 "a5e9ae282355ba3fed6fc4be0a401145171d41a5fa21e80cfa16cadcb9ac00cb"

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
