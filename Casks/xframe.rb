cask "xframe" do
  version "0.1.2,3"
  sha256 "2fbefb54d9cacba6ac7783fb9d3a31b5f344674d0020dba4e913d116f7a2274b"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
