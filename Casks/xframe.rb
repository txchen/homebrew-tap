cask "xframe" do
  version "0.1.1,2"
  sha256 "52c389ff5cfdcaa1c6899c252ddf8098a6d4591f668fcadf47ce8ccfd0327941"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
