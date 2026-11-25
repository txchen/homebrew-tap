cask "xframe" do
  version "0.3.1,15"
  sha256 "233fdd6f40594736ef6f7926b5518a275e30337ce2dce4adaac11cc4bb33285d"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
