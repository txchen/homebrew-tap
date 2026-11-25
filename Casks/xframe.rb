cask "xframe" do
  version "0.3.0,14"
  sha256 "11298187d48c9cd371f536f97151a1c8973b54d2c07672e57b872132adb98367"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
