cask "xframe" do
  version "0.3.4,18"
  sha256 "6b386c300086b7dfa2829709e2b98c3f496c5034ec43991d8b87e11547a373b1"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
