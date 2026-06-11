cask "cctv" do
  version "0.1.0"
  sha256 "e46f9b4e3f5666a3c875d4b8691d5a816f39c02c62f852c95f962ca0df6aef6d"

  url "https://github.com/manelrv/CCTV/releases/download/v#{version}/CCTV_#{version}_universal.dmg"
  name "CCTV"
  desc "See which Claude Code agent needs you, from the macOS menu bar"
  homepage "https://github.com/manelrv/CCTV"

  # The app is not yet signed/notarized. Install with --no-quarantine, or
  # right-click → Open on first launch, to get past Gatekeeper.
  app "CCTV.app"

  zap trash: [
    "~/Library/Application Support/com.manelrv.cctv",
  ]
end
