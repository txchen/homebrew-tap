cask "mygo-music-lite" do
  version "0.5.0"
  sha256 "717a7f6d5025a7dda9013632b63ca1f1b243779eb4064cd213647cb04a129600"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/738340357",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
