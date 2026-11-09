cask "mygo-music-lite" do
  version "0.3.0"
  sha256 "dc7ac5c89b4c70bc7d870afff3c80bf424004b14c5e5f444658db6e858b302b9"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/726478142",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Local music player with AVPlayer and optional mpv playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
