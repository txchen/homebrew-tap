cask "xframe" do
  version "0.1.3,4"
  sha256 "8f273c762981d0798dc5c5902098366a2e9fbc87b99e17775597bc3384f37e1e"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
