cask "xframe" do
  version "0.1.7,8"
  sha256 "19181ce0cd37062d98f8895cb73666a800b1a91c7617a6aadd9653a186322a1e"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
