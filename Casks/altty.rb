cask "altty" do
  version "0.2.4"
  sha256 "b468d80392c3609a4f5abef33ab07090b2365ce794871b00425e9a613c407e98"

  url "https://github.com/txchen/altty/releases/download/0.2.4/Altty-0.2.4-arm64.zip"
  name "Altty"
  desc "Native Apple-silicon menu-bar window switcher"
  homepage "https://github.com/txchen/altty"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Altty.app"

  zap trash: [
    "~/Library/Application Support/app.altty.macos",
    "~/Library/Caches/app.altty.macos",
    "~/Library/Logs/app.altty.macos",
    "~/Library/Preferences/app.altty.macos.plist",
  ]
end
