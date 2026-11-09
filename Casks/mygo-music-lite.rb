cask "mygo-music-lite" do
  version "0.3.1"
  sha256 "951718691637f49af654c99848839d6295f8c40cea4c744050a6715c0c30c06f"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/728051878",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Local music player with AVPlayer and optional mpv playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
