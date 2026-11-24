cask "xframe" do
  version "0.2.1,11"
  sha256 "f88e7962f88502fdf4612368e7f54fcd4cb4e88c6c164b2aa890f250d34b78b2"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
