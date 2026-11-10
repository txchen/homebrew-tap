cask "mygo-music-lite" do
  version "0.4.3"
  sha256 "830f070efa7796e4ed37f1298b9eca81033a0d4db079f8f7709a4017e53bca59"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/729686028",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
