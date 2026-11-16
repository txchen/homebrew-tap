cask "mattermost-go" do
  version "0.5.4"
  sha256 "cac330b4dd331c047721ddead77801929b463709c9c57884fb725d7a5d6aeaf4"

  url "https://github.com/txchen/mattermostgo/releases/download/v#{version}/mattermost-go-#{version}.dmg"
  name "Mattermost Go"
  desc "Native Mattermost client"
  homepage "https://github.com/txchen/mattermostgo"

  auto_updates true
  depends_on macos: :monterey

  app "Mattermost Go.app"

  zap trash: [
    "~/Library/Application Support/Mattermost Go",
    "~/Library/Caches/Mattermost Go",
    "~/Library/Preferences/com.github.txchen.mattermostgo.plist",
    "~/Library/Saved Application State/com.github.txchen.mattermostgo.savedState",
  ]
end
