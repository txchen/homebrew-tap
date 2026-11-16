cask "xframe" do
  version "0.1.4,5"
  sha256 "d9bdeb6878a0294f56635a153f7bd2e342318b1fd6e461f0600a70eceaef7232"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
