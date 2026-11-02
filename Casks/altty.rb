cask "altty" do
  version "0.2.3"
  sha256 "bddd33f3e346762249c8960dd7e0b2a75f864639beb4f5d3cdaab275b238c1af"

  url "https://github.com/txchen/altty/releases/download/0.2.3/Altty-0.2.3-arm64.zip"
  name "Altty"
  desc "Native Apple-silicon menu-bar window switcher"
  homepage "https://github.com/txchen/altty"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Altty.app"

  zap trash: [
    "~/Library/Application Support/app.altty.macos",
    "~/Library/Caches/app.altty.macos",
    "~/Library/Logs/app.altty.macos",
    "~/Library/Preferences/app.altty.macos.plist",
  ]
end
