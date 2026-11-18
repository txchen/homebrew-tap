cask "xframe" do
  version "0.1.5,6"
  sha256 "1c1f4627a1e26bab690062aefec5ba5d8ffedace4756033d2495e6585aa9a8a5"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
