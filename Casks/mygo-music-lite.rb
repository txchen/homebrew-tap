cask "mygo-music-lite" do
  version "0.5.1"
  sha256 "7b5edca111120f5e21a70529400c7013a27e6777add25319f26865b0476272b8"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/746061292",
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
