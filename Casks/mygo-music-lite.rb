cask "mygo-music-lite" do
  version "0.1.22"
  sha256 "84b703dc0fcce2b9872ac1d9fa599b23c67d623cb7c7226adc36a404c9c71b2e"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/726336596",
      header: { "Accept" => "application/octet-stream" }
  container type: :zip
  name "MyGo Music Lite"
  desc "Local music player with AVPlayer and optional mpv playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
