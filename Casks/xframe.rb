cask "xframe" do
  version "0.1.6,7"
  sha256 "1a3c204ae867273f29c023c061d4c5d336c6a1d32b19dbb8b637e2c3a99ac34c"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
