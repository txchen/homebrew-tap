cask "mygo-music-lite" do
  version "0.4.2"
  sha256 "c79b3202831fa0a2e55434fb0d4463557a0f995ea1f449ab2255455a014a7537"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/729647616",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
