cask "xframe" do
  version "0.1.8,9"
  sha256 "e559e65d9d77d525434fb3653b1f0f0b1ec5af85bd31b8bb782002f0a2eb8c44"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
