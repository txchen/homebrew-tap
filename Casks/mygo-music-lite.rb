cask "mygo-music-lite" do
  version "0.2.0"
  sha256 "34a800b241482a9401bc003980b15dc55ea68a5669dfb078b8cb4661d4908c24"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/726355811",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Local music player with AVPlayer and optional mpv playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
