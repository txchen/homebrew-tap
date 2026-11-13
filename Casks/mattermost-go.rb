cask "mattermost-go" do
  version "0.4.0"
  sha256 "8f7d87d2b5ded18000ff7a04f6c5645948eea454be5ec357705dcd1f98e36151"

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
