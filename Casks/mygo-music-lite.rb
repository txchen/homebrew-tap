cask "mygo-music-lite" do
  version "0.4.4"
  sha256 "7c82eebaec13b00e9b8f34c6578483277ca5926fe8aa77ed0a606eb7b9e782cd"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/729927391",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
