cask "xframe" do
  version "0.2.3,13"
  sha256 "54cc34d07f768c96ef1f2d4dabb78b8c040cfaf8932aea3cd1145ff1289cb0ad"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
