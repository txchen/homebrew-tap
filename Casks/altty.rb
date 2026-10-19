cask "altty" do
  version "0.2.2"
  sha256 "5065c843f640372936ad2ee0faeead38de74013895e26028fd79b3adab2cfce6"

  url "https://github.com/txchen/altty/releases/download/0.2.2/Altty-0.2.2-arm64.zip"
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
