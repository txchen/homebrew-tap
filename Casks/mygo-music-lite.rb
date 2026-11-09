cask "mygo-music-lite" do
  version "0.4.1"
  sha256 "a0be3fcfde46ad81524b2a8d7f81b37f6e3a0104b16d8dce97244bdf96030df7"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/729383777",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
