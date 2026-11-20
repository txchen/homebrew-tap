cask "mygo-music-lite" do
  version "0.5.2"
  sha256 "81d8ee6fa1bf6f6206311e77ca8682f80a5b33ad6397632b3b22e2a0cd3d2b9d"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/770833387",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
