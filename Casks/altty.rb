cask "altty" do
  version "0.2.1"
  sha256 "d0486f9e1e948250d7f79a976ad6e729f545da95cb280dbcae0cb36be2a074e2"

  url "https://github.com/txchen/altty/releases/download/0.2.1/Altty-0.2.1-arm64.zip"
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
