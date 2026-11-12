cask "mygo-music-lite" do
  version "0.4.6"
  sha256 "18b6c1446642515afe89ce7849fb5be5b4bc0c111314070af729326134ec0e5f"

  url "https://api.github.com/repos/txchen/mygo-music-lite/releases/assets/738267634",
      header: "Accept: application/octet-stream"
  container type: :zip
  name "MyGo Music Lite"
  desc "Music player with bundled FFmpeg and miniaudio playback"
  homepage "https://github.com/txchen/mygo-music-lite"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "MyGo Music Lite.app"
end
