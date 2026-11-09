cask "mygo-music-lite" do
  version "0.4.0"
  sha256 "26cde0efae92ba1eba330605132353e7ba78bb6ca9795d349bfa009b05af04b9"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/728831627",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
