cask "mattermost-go" do
  version "0.5.6"
  sha256 "a6e4bbedd721566707c0917fed6a7f513abe7ece9d96c5a9185e6a68af0e286c"

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
