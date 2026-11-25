cask "xframe" do
  version "0.3.2,16"
  sha256 "cf466e47a501227977ae17138435c462fbbecd284748bb8d88fe33c0b686f679"

  url "https://github.com/txchen/xframe/releases/download/v#{version.csv.first}/XFrame-#{version.csv.first}-#{version.csv.second}-macos27-arm64.zip"
  name "XFrame"
  desc "Native Xbox streaming client"
  homepage "https://github.com/txchen/xframe"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "XFrame.app"
end
