cask "altty" do
  version "0.1.0"
  sha256 "559c37118de95333ab2d300f925d150809ed69417653ab51f37490d9d2a7b900"

  url "https://github.com/txchen/altty/releases/download/0.1.0/Altty-0.1.0-arm64.zip"
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
