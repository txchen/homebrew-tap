cask "xframe" do
  version "0.3.3,17"
  sha256 "c3dc90d91a2fefcdeb35f9240d1e39abc07b20beceac174beeaca65b0713f3af"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
