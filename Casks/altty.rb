cask "altty" do
  version "0.2.0"
  sha256 "78d9fc6e7ff9394a848e25a87c4754ee863d660b9b1486844d4c753cf99e0775"

  url "https://github.com/txchen/altty/releases/download/0.2.0/Altty-0.2.0-arm64.zip"
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
